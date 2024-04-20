import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

import 'add_patient_wizard.dart';

class ClassificationUI extends UI {
  const ClassificationUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CLASSIFICATIONS".text(textScaleFactor: 1.5).pad(),
        DropdownButtonFormField(
          value: patientRM().classification,
          decoration: InputDecoration(
            labelText: 'CLASSIFICATION',
          ),
          items: Classification.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: e.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (classification) => patientRM(
            patientRM().copyWith(classification: classification!),
          ),
        ).pad(),
        DropdownButtonFormField(
          value: patientRM().triage,
          decoration: InputDecoration(
            labelText: 'TRIAGE',
          ),
          items: Triage.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: e.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (triage) => patientRM(
            patientRM().copyWith(triage: triage!),
          ),
        ).pad(),
      ],
    );
  }
}
