import '../main.dart';

enum PatientsPages { list, single }

PatientsPages get patientsPages => patientsPagesRM.state;
final patientsPagesRM = RM.inject(() => PatientsPages.list);
setPatientsPages(PatientsPages patientsPages) =>
    patientsPagesRM.state = patientsPages;

Patients get patients => patientsRM.state;
final patientsRM = RM.inject(
  () => Patients(),
  persist: () => PersistState(
    key: "Patients",
    fromJson: (json) => Patients.fromJson(jsonDecode(json)),
    toJson: (state) => jsonEncode(state.toJson()),
  ),
);
void setPatients(Patients patients) => patientsRM.state = patients;
void addPatient(Patient patient) {
  setPatients(
    patients.copyWith(
      cache: Map.of(patients.cache)..[patient.id] = patient,
    ),
  );
}

void removePatient(Patient patient) {
  setPatients(
    patients.copyWith(
      cache: Map.of(patients.cache)..remove(patient.id),
    ),
  );
}
