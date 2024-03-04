import 'package:hmis/main.dart';

class PatientsPage extends UI {
  const PatientsPage({super.key});

  static final Simple<String> idRM = Simple('');

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: animationDuration,
      child: switch (patientsPagesRM()) {
        PatientsPages.list => Scaffold(
            appBar: customAppBar(
              title: 'Patients',
              onDoubleTap: () async {
                final patient = await RM.navigate
                    .toDialog<Patient>(const AddPatientDialog());
                if (patient != null) {
                  patientsRM.add(patient);
                }
              },
            ),
            body: patientsRM().cache.isEmpty
                ? Align(
                    child: const FaIcon(
                      FontAwesomeIcons.peopleGroup,
                      size: 150,
                    ).pad(),
                  )
                : ListView(
                    physics: const BouncingScrollPhysics(),
                    children: patientsRM().cache.entries.map(
                      (patientEntry) {
                        final patient = patientEntry.value;
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: patient.age.text(),
                            ),
                            onTap: () {
                              idRM(patient.id);
                              patientsPagesRM(PatientsPages.single);
                            },
                            title: patient.name.text(textScaleFactor: 1.2),
                            selected: patient.id == idRM(),
                          ),
                        );
                      },
                    ).toList(),
                  ),
          ),
        PatientsPages.single => PatientPage(id: idRM()),
      },
    );
  }
}
