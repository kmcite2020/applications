import 'package:hmis/main.dart';

final idRM = RM.inject(() => '');
setId(String i) => idRM.state = i;

class PatientsPage extends UI {
  const PatientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: animationDuration,
      child: switch (patientsPages) {
        PatientsPages.list => Scaffold(
            appBar: customAppBar(
              title: 'Patients',
              onDoubleTap: () async {
                final patient = await RM.navigate
                    .toDialog<Patient>(const AddPatientDialog());
                if (patient != null) {
                  addPatient(patient);
                }
              },
            ),
            body: patients.cache.isEmpty
                ? Align(
                    child: const FaIcon(
                      FontAwesomeIcons.peopleGroup,
                      size: 150,
                    ).pad(),
                  )
                : ListView(
                    physics: const BouncingScrollPhysics(),
                    children: patients.cache.entries.map(
                      (patientEntry) {
                        final patient = patientEntry.value;
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: patient.age.text(),
                            ),
                            onTap: () {
                              setId(patient.id);
                              setPatientsPages(PatientsPages.single);
                            },
                            title: patient.name.text(textScaleFactor: 1.2),
                            selected: patient.id == idRM.state,
                          ),
                        );
                      },
                    ).toList(),
                  ),
          ),
        PatientsPages.single => PatientPage(id: idRM.state),
      },
    );
  }
}
