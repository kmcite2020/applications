import 'package:hmis/main.dart';

class PatientsPage extends UI {
  const PatientsPage({super.key});
  static final nameRM = Simple('');
  static final ageRM = Simple('20');

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
                final patient = await RM.navigate.toDialog<Patient>(
                  Dialog.fullscreen(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'NAME',
                          ),
                          initialValue: nameRM(),
                          onChanged: nameRM.call,
                        ).pad(),
                        TextFormField(
                          initialValue: ageRM(),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            labelText: 'AGE',
                          ),
                          onChanged: ageRM.call,
                        ).pad(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Patient token = Patient()
                                //   ..bioData.names.patientFullName = nameFF.text
                                //   ..age.years = ageFF.value
                                //   ..dateTime = DateTime.now();
                                // navigator.back(token);
                                final patient = Patient(
                                  id: randomID,
                                  name: nameRM(),
                                  age: ageRM(),
                                );
                                RM.navigate.back(patient);
                              },
                              child: 'Save'.text(),
                            ).pad(),
                            ElevatedButton(
                              onPressed: () => RM.navigate.back(),
                              child: 'Cancel'.text(),
                            ).pad(),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
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
