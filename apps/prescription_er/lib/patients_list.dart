import 'package:prescription_er/main.dart';
import 'package:prescription_er/patient_page.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';

import 'add_patient_wizard/add_patient_wizard.dart';

class PatientsListPage extends Page {
  @override
  PreferredSizeWidget? appBar() {
    return AppBar(
      title: 'Patients'.text(),
    );
  }

  @override
  Widget? body() {
    return ListView.builder(
      itemCount: patients.cache.length,
      itemBuilder: (context, index) {
        final patient = patients.cache.values.toList()[index];
        return ListTile(
          title: patient.name.text(),
          subtitle: patient.address.text(),
          onTap: () => RM.navigate.to(PatientPage(id: patient.id)),
        );
      },
    );
  }

  @override
  Widget? floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        RM.navigate.to(
          AddPatientWizard(),
        );
      },
    );
  }
}
