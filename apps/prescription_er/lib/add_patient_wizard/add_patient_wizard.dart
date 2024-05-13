import 'package:prescription_er/add_patient_wizard/bio_data.dart';
import 'package:prescription_er/add_patient_wizard/classification.dart';
import 'package:prescription_er/add_patient_wizard/cnic.dart';
import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

class AddPatientWizard extends StatelessWidget {
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
              back(patientRM());
            },
            child: "Save".text(),
          ).pad(),
        ],
      ),
    );
  }
}

final patientRM = Simple<Patient>(
  Patient(
    arrivalAt: DateTime.now(),
    id: randomID,
  ),
);
