import 'package:prescription_er/main.dart';
import 'package:prescription_er/patient_page.dart';

import 'add_patient_wizard/add_patient_wizard.dart';
import 'prescriptions/patients_rm.dart';

final currentlySelectedPatientRM = RM.inject(() => '');

void selectPatient(String id) {
  currentlySelectedPatientRM.state = id;
}

class PatientsListPage extends UI {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Patients'.text(),
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        children: [
          Container(
            width: 300,
            child: ListView.builder(
              itemCount: patientsRM().length,
              itemBuilder: (context, index) {
                final patient = patientsRM()[index];
                return ListTile(
                  selected: patient.id == currentlySelectedPatientRM.state,
                  title: patient.name.text(),
                  subtitle: patient.address.text(),
                  onTap: () {
                    selectPatient(patient.id);
                    // RM.navigate.to(PatientPage(id: patient.id));
                  },
                  selectedTileColor: Colors.purple.shade100,
                  selectedColor: Colors.purple.shade900,
                );
              },
            ),
          ),
          Container(
            width: 332,
            child: PatientPage(id: currentlySelectedPatientRM.state),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RM.navigate.to(
            AddPatientWizard(),
          );
        },
      ),
    );
  }
}
