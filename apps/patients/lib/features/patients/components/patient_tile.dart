import '../../../main.dart';

class PatientTile extends UI {
  const PatientTile({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      patientID: id,
      builder: (patient) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            patient.name.text().borderizeGradiently(),
            Row(
              children: [
                IconButton.filledTonal(
                  tooltip: 'Details',
                  onPressed: () => navigator.to(PatientPage(id: id)),
                  icon: const Icon(Icons.info),
                ).pad(),
                IconButton.filledTonal(
                  tooltip: patient.attended ? 'Attended' : 'Un-attended',
                  onPressed: () => setPatient(
                    patient.copyWith(attended: !patient.attended),
                  ),
                  icon: Icon(
                    patient.attended ? Icons.toggle_on : Icons.toggle_off,
                  ),
                ).pad(),
                IconButton.filledTonal(
                  tooltip: 'Delete',
                  onPressed: () {
                    removePatient(patient);
                  },
                  icon: const Icon(Icons.delete_forever),
                ).pad(),
                AgeUI(age: patient.age),
              ],
            ).pad(),
          ],
        ).borderizeGradiently();
      },
    );
  }
}

// class DiagnosisUpdater {
//   Diagnosis diagnosis = const Diagnosis();
//   void updateDiagnosis(Diagnosis diagnosis, Patient patient) {
//     // patientsManager.setPatient(
//     //   patient.copyWith(diagnosis: diagnosis),
//     // );
//   }

//   void setDiagnosis(String dx, Patient patient) {
//     // updateDiagnosis(
//     //   patient.diagnosis.copyWith(diagnosis: dx),
//     //   patient,
//     // );
//   }

//   List<String> get provDxs => [];
//   void setProvisionalDiagnoses(List<String> dxs, Patient patient) {
//     // updateDiagnosis(
//     //   patient.diagnosis.copyWith(provisionalDiagnoses: dxs),
//     //   patient,
//     // );
//   }

//   void addProvisionalDiagnosis(
//     String dx,
//     Patient patient,
//   ) {
//     setProvisionalDiagnoses(diagnosis.provisionalDiagnoses..add(dx), patient);
//   }

//   void removeProvisionalDiagnosis(
//     String dx,
//     Patient patient,
//   ) {
//     setProvisionalDiagnoses(
//         diagnosis.provisionalDiagnoses..remove(dx), patient);
//   }
// }
