import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'package:project_dermatosis/main.dart';

import 'patient.dart';

part 'patients.freezed.dart';
part 'patients.g.dart';

abstract class PatientsRepository {
  Stream<Patients> watch();
  void modify(Patients event);
}

class PatientsRepositoryImpl implements PatientsRepository {
  PatientsRepositoryImpl() {
    controller = StreamController.broadcast();
    subscription = controller.stream.listen(
      (event) {
        patientsBox.put('i', event);
        modify(event);
      },
    );
  }
  late Box box;
  late StreamSubscription<Patients> subscription;
  late StreamController<Patients> controller;
  @override
  Stream<Patients> watch() => controller.stream;
  void modify(Patients event) => controller.add(event);
  void dispose() {
    subscription.cancel();
    controller.close();
  }
}

final patientsRepository = PatientsRepositoryImpl();

final patientsManager = PatientsManager();

class PatientsManager {
  final patientsStreamingRM = RM.injectStream(
    patientsRepository.watch,
    initialState: Patients(),
  );
  final patientsRM = RM.inject(
    () => Patients(),
    persist: () => PersistState(
      key: 'patients',
      toJson: (s) => jsonEncode(s),
      fromJson: (json) => Patients.fromJson(jsonDecode(json)),
    ),
  );

  Patients get patients => patientsStreamingRM.state;
  set patients(Patients _) => patientsRepository.modify(_);

  List<Patient> get listOfPatients => patients.patients.toList();

  void setPatient(Patient patient) {
    patients = patients.copyWith(
      patients: List.of(listOfPatients)..add(patient),
    );
  }

  void removePatient(Patient patient) {
    patients = patients.copyWith(
      patients: List.of(listOfPatients)..remove(patient),
    );
  }

  Patient getPatient(String id) =>
      listOfPatients.firstWhere((element) => element.id == id);
}

@freezed
class Patients with _$Patients {
  const factory Patients({
    @Default(<Patient>[]) final List<Patient> patients,
  }) = _Patients;
  factory Patients.fromJson(json) => _$PatientsFromJson(json);
}

class PatientsBuilder extends StatelessWidget {
  const PatientsBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);
  final Widget Function(Patients patients) builder;
  static final _ = RM.injectStream(patientsRepository.watch);
  @override
  Widget build(BuildContext context) {
    return _.onAll(
      onWaiting: () => CircularProgressIndicator(),
      onError: (_, __) => _.text(),
      onData: (patients) => builder(patients),
    );
  }
}
