import 'package:flutter/material.dart';
import 'package:manager/manager.dart';
import '../../../../../shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../../domain/models/models.dart';
import '../../../../blocs/patients_bloc.dart';

class TriageView extends ReactiveStatelessWidget {
  const TriageView({
    super.key,
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: patient.triage,
      items: Triage.values
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: e.text(),
            ),
          )
          .toList(),
      onChanged: (value) {
        patientsBloc.setTriage(
          value!,
          patient,
        );
      },
    ).pad();
  }
}
