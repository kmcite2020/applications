import '../../main.dart';

final patientsRM = RM.inject(
  () => const Patients(),
  persist: () => PersistState(
    key: 'patients',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Patients.fromJson(jsonDecode(json)),
  ),
);

Patients get patients => patientsRM.state;

set patients(Patients _) => patientsRM.state = _;

List<Patient> get listOfPatients => patients.listOfPatients;

void setPatient(Patient patient) {
  patients = patients.copyWith(
    patientsCache: Map.of(patients.patientsCache)..[patient.id] = patient,
  );
}

void removePatient(Patient patient) {
  patients = patients.copyWith(
    patientsCache: Map.of(patients.patientsCache)..remove(patient.id),
  );
}

void removeAllPatients() => patients = const Patients();

Patient patientFromID(String patientID) => patients.patientsCache[patientID]!;

// class DiagnosisManager {
//   static setDiagnosis(
//     Diagnosis Function(String patientID) diagnosisModifier,
//     String patientID,
//   ) {
//     // ignore: unused_local_variable
//     final patient = Patient.fromID(patientID);
//     // patientsManager.setPatient(
//     //   patient.copyWith(
//     //     diagnosis: diagnosisModifier(patientID),
//     //   ),
//     // );
//   }
// }
