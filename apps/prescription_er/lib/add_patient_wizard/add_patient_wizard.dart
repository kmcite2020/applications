import 'package:prescription_er/add_patient_wizard/bio_data.dart';
import 'package:prescription_er/add_patient_wizard/classification.dart';
import 'package:prescription_er/add_patient_wizard/cnic.dart';
import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

class AddPatientWizard extends UI {
  const AddPatientWizard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'BKMC-MTI Swabi'.text(),
      ),
      body: ListView(
        children: [
          CNICUI(),
          BioDataUI(),
          Divider(),
          ClassificationUI(),
          ElevatedButton(
            onPressed: () {
              patientsRM(patient);
              RM.navigate.back();
            },
            child: "Save".text(),
          ).pad(),
        ],
      ),
    );
  }
}

Patient get patient => patientRM.state;
final patientRM = RM.inject<Patient>(
  () => Patient(
    arrivalAt: DateTime.now(),
    id: randomID,
  ),
);
setPatient(Patient patient) => patientRM.state = patient;
