import 'package:hmis/main.dart';

class PatientPage extends UI {
  const PatientPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final patient = Patient.get(id: id);
    return Scaffold(
      appBar: customAppBar(
        leading: IconButton(
          onPressed: () => patientsPagesRM.state = (PatientsPages.list),
          icon: const FaIcon(
            FontAwesomeIcons.heartPulse,
          ),
        ),
        title: patient.name,
      ),
      body: Column(
        children: [
          'NAME'.text(),
          TextFormField(
            initialValue: patient.name,
            onChanged: (name) {
              addPatient(
                patient.copyWith(name: name),
              );
            },
          ).pad(),
          'AGE'.text(),
          TextFormField(
            initialValue: patient.age,
            onChanged: (age) {
              addPatient(
                patient.copyWith(age: age),
              );
            },
          ).pad(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'INVESTIGATIONS'.text().pad(),
              PopupMenuButton(
                onSelected: (investigation) {
                  if (patient.investigations.contains(investigation)) {
                    addPatient(
                      patient.copyWith(
                        investigations: List.of(patient.investigations)
                          ..remove(investigation),
                      ),
                    );
                  } else {
                    addPatient(
                      patient.copyWith(
                        investigations: List.of(patient.investigations)
                          ..add(investigation),
                      ),
                    );
                  }
                },
                itemBuilder: (_) => investigations.cache.values
                    .map(
                      (value) => PopupMenuItem(
                        value: value,
                        child: Row(
                          children: [
                            if (patient.investigations.contains(value))
                              const Icon(Icons.done).pad()
                            else
                              const Icon(Icons.cancel).pad(),
                            value.name.text(),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ).pad(),
            ],
          ),
          Wrap(
            children: patient.investigations
                .map(
                  (eachInvestigaion) => Chip(
                    labelPadding: const EdgeInsets.all(1),
                    label: eachInvestigaion.name.text(),
                    onDeleted: () {
                      addPatient(
                        patient.copyWith(
                          investigations: List.of(patient.investigations)
                            ..remove(eachInvestigaion),
                        ),
                      );
                    },
                  ).pad(
                    custom: const EdgeInsets.all(2),
                  ),
                )
                .toList(),
          ),
          patient.bills.text(textScaleFactor: 3),
        ],
      ),
    );
  }
}
