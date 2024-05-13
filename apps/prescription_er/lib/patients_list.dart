import 'package:prescription_er/main.dart';
import 'package:prescription_er/patient_page.dart';

import 'add_patient_wizard/add_patient_wizard.dart';
import 'prescriptions/patients_rm.dart';
import 'prescriptions/prescription.dart';

final currentlySelectedPatientIDRM = Simple('');

bool get currentlyEmpty => currentlySelectedPatientIDRM() == '';
void selectPatient(String id) {
  currentlySelectedPatientIDRM(id);
}

class PatientsListPage extends UI {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Patients'.text(),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 250,
              child: ListView.builder(
                itemCount: patientsRM().length,
                itemBuilder: (context, index) {
                  final patient = patientsRM()[index];
                  return ListTile(
                    selected: patient.id == currentlySelectedPatientIDRM.state,
                    title: patient.name.text(),
                    subtitle: patient.address.text(),
                    onTap: () {
                      if (currentlyEmpty) {
                        selectPatient(patient.id);
                      } else {
                        if (currentlySelectedPatientIDRM.state == patient.id) {
                          selectPatient('');
                        } else {
                          selectPatient(patient.id);
                        }
                      }
                    },
                    selectedTileColor: Colors.purple.shade100,
                    selectedColor: Colors.purple.shade900,
                  );
                },
              ),
            ),
            Container(
              width: 300,
              child: currentlyEmpty
                  ? 'No patient is selected'.text().center()
                  : PatientPage(id: currentlySelectedPatientIDRM()),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final patient = await to<Patient>(AddPatientWizard());
          if (patient != null) {
            patientsRM(
              patient.copyWith(id: randomID),
            );
          }
        },
      ),
    );
  }
}
