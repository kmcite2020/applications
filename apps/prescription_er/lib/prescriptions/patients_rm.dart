import 'package:prescription_er/main.dart';

import 'prescription.dart';

final patientsRM = RM.inject(
  () => Patients(),
  persist: () => PersistState(
    key: 'patients',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Patients.fromJson(
      jsonDecode(json),
    ),
  ),
);
Patients get patients => patientsRM.state;
setPatients(Patients patients) => patientsRM.state = patients;

void savePatient(Patient patient) {
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
