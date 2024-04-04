import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../pictures/pictures.dart';
import 'patients.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    @Default('') final String id,
    @Default('') final String name,
    @Default(Gender.male) final Gender gender,
    @Default(false) final bool editing,
    @Default(Address()) final Address address,
    required final DateTime dateOfBirth,
    @Default([]) final List<Lesion> lesions,
    @Default(Contact()) final Contact contact,
    @Default(Diagnoses()) final Diagnoses diagnoses,
    @Default([]) final List<Imagery> pictures,
  }) = _Patient;
  const Patient._();
  Duration get age => DateTime.now().difference(dateOfBirth);
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

@freezed
class Diagnoses with _$Diagnoses {
  const factory Diagnoses({
    @Default('') final String diagnosis,
    @Default([]) final List<String> provisionalDiagnoses,
  }) = _Diagnoses;
  const Diagnoses._();
  factory Diagnoses.fromJson(Map<String, dynamic> json) =>
      _$DiagnosesFromJson(json);
}

@freezed
class Lesion with _$Lesion {
  const factory Lesion({
    @Default(Site.arms) Site site,
    @Default(Patterns()) Patterns patterns,
  }) = _Lesion;
  const Lesion._();
  factory Lesion.fromJson(Map<String, dynamic> json) => _$LesionFromJson(json);
}

@freezed
class Patterns with _$Patterns {
  const factory Patterns({
    @Default(false) bool localizedOrGeneralized,
    @Default(false) bool unilateralOrBilateral,
    @Default(false) bool symmetricalOrAssymetrical,
    @Default(false) bool truncalOrAcral,
    @Default(false) bool flexorOrExtensor,
    @Default(false) bool exposedOrCovered,
  }) = _Patterns;
  const Patterns._();
  factory Patterns.fromJson(Map<String, dynamic> json) =>
      _$PatternsFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String countryCode,
    @Default('') String mnp,
    @Default('') String phoneCode,
  }) = _Contact;
  const Contact._();
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @Default('') String town,
    @Default('') String city,
    @Default('') String province,
    @Default('') String country,
  }) = _Address;
  const Address._();
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

enum Gender { male, female }

enum Site { scalp, face, trunk, thigh, legs, arms, hands, feet }

class PatientBuilder extends StatelessWidget {
  const PatientBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Widget Function(Patient patient) builder;
  @override
  Widget build(BuildContext context) {
    return PatientsBuilder(
      builder: (patients) {
        final patient =
            patients.patients.firstWhere((element) => element.id == id);
        return builder(patient);
      },
    );
  }
}
