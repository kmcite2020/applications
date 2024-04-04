import 'package:patients/features/patients/pages/patient_page/first_aid_manager.dart';

import '../../../../main.dart';
import 'complaints_manager.dart';

class EditingModeUI extends UI {
  const EditingModeUI({super.key, required this.patientID});
  final String patientID;
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      patientID: patientID,
      builder: (patient) {
        return ListView(
          shrinkWrap: true,
          children: [
            AgeUI(age: patient.age),
            TextFormField(
              initialValue: patient.name.toUpperCase(),
              onChanged: (name) {
                setPatient(
                  patient.copyWith(name: name.toUpperCase()),
                );
              },
              decoration: const InputDecoration(
                labelText: 'NAME',
              ),
            ).pad(),
            ComplaintsManager(patientID: patientID),
            FirstAidManager(patientID: patientID),
            // TextFormField(
            //   minLines: 4,
            //   maxLines: 6,
            //   initialValue: patient.complaints,
            //   onChanged: (complaints) {
            //     setPatient(
            //       patient.copyWith(complaints: complaints),
            //     );
            //   },
            //   decoration: const InputDecoration(
            //     labelText: 'COMPLAINTS',
            //   ),
            // ).pad(),
            // TextFormField(
            //   initialValue: patient.diagnosis,
            //   minLines: 2,
            //   maxLines: 3,
            //   onChanged: (diagnosis) {
            //     setPatient(
            //       patient.copyWith(diagnosis: diagnosis),
            //     );
            //   },
            //   decoration: const InputDecoration(
            //     labelText: 'DIAGNOSIS',
            //   ),
            // ).pad(),
            // TextFormField(
            //   initialValue: patient.emrgencyTreatment,
            //   minLines: 5,
            //   maxLines: 20,
            //   onChanged: (emergencyTreatment) {
            //     setPatient(
            //       patient.copyWith(emrgencyTreatment: emergencyTreatment),
            //     );
            //   },
            //   decoration:
            //       const InputDecoration(labelText: 'EMERGENCY TREATMENT'),
            // ).pad(),
            // TextFormField(
            //   initialValue: patient.homeTreatment,
            //   minLines: 5,
            //   maxLines: 20,
            //   onChanged: (homeTreatment) {
            //     setPatient(
            //       patient.copyWith(homeTreatment: homeTreatment),
            //     );
            //   },
            //   decoration: const InputDecoration(labelText: 'HOME TREATMENT'),
            // ).pad(),
          ],
        );
      },
    );
  }
}
