import '../../../main.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patients with _$Patients {
  const factory Patients({
    @Default(<String, Patient>{}) final Map<String, Patient> patientsCache,
  }) = _Patients;
  const Patients._();
  List<Patient> get listOfPatients => patientsCache.values.toList();
  int get length => patientsCache.length;
  factory Patients.fromJson(json) => _$PatientsFromJson(json);
  Patients call([Patients? patients]) {
    if (patients != null) {
      patientsRM.state = patients;
    }
    return patientsRM.state;
  }
}

enum AgeUnit { days, months, years }

@freezed
class Age with _$Age {
  const factory Age({
    @Default(0) final int value,
    @Default(AgeUnit.years) final AgeUnit ageUnit,
  }) = _Age;

  factory Age.fromJson(json) => _$AgeFromJson(json);
}

@freezed
class Patient with _$Patient {
  const factory Patient.raw({
    @Default('') final String id,
    @Default('') final String name,
    @Default(Age()) final Age age,
    required final DateTime? timeOfPresentation,
    @Default(PatientType.medical) final PatientType patientType,
    @Default([]) final List<String> complaintNotes,
    @Default([]) final List<String> firstAidNotes,
    @Default([]) final List<String> diagnositicNotes,
    @Default([]) final List<String> furtherPlans,
    @Default(Pictures()) final Pictures pictures,
    @Default(false) final bool attended,
    @Default(false) final bool editing,
  }) = _Patient;
  factory Patient() => Patient.raw(
        id: randomID,
        timeOfPresentation: DateTime.now(),
      );
  factory Patient.fromJson(json) => _$PatientFromJson(json);
  factory Patient.fromID(String patientID) => patientFromID(patientID);
  const Patient._();
  // List<Complaint> get complaints => complaintIDs
  //     .map(
  //       (eachComplaintID) => Complaint.fromID(eachComplaintID),
  //     )
  //     .toList();
}

// @freezed
// class Management with _$Management {
//   const factory Management({
//     @Default('') final String type,
//     @Default('') final String medicine,
//     @Default('') final String route,
//     @Default('') final String frequency,
//     @Default('') final String furtherInstructions,
//   }) = _Management;

//   factory Management.fromJson(json) => _$ManagementFromJson(json);
//   factory Management.fromString(String value) {
//     final list = value.split(' ');
//     return Management(
//       type: list[0],
//       medicine: list[1],
//       route: list[2],
//       frequency: list[3],
//       furtherInstructions: list[4],
//     );
//   }
// }

enum DurationType { days, months, years }

enum PatientType { medical, surgical, peds, obs, mixed }

// @freezed
// class Diagnosis with _$Diagnosis {
//   const factory Diagnosis({
//     @Default('Unknown') final String diagnosis,
//     @Default(<String>[]) final List<String> provisionalDiagnoses,
//   }) = _Diagnosis;

//   factory Diagnosis.fromJson(json) => _$DiagnosisFromJson(json);
// }

// @freezed
// class EmergencyManagement with _$EmergencyManagement {
//   const factory EmergencyManagement({
//     @Default(<Management>[]) final List<Management> managements,
//   }) = _EmergencyManagement;
//   factory EmergencyManagement.fromJson(json) =>
//       _$EmergencyManagementFromJson(json);
// }

// @freezed
// class HomeManagement with _$HomeManagement {
//   const factory HomeManagement({
//     @Default(<Management>[]) final List<Management> managements,
//   }) = _HomeManagement;
//   factory HomeManagement.fromJson(json) => _$HomeManagementFromJson(json);
// }

@freezed
class Pictures with _$Pictures {
  const factory Pictures({
    @Default('') final String details,
  }) = _Pictures;

  factory Pictures.fromJson(json) => _$PicturesFromJson(json);
}
