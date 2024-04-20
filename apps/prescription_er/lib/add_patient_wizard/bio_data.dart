import 'package:prescription_er/add_patient_wizard/add_patient_wizard.dart';
import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

class BioDataUI extends UI {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "BIODATA".text(textScaleFactor: 1.5).pad(),
        TextFormField(
          initialValue: patientRM().name,
          onChanged: (name) => patientRM(
            patientRM().copyWith(name: name),
          ),
          decoration: InputDecoration(
            labelText: 'NAME',
          ),
        ).pad(),
        TextFormField(
          initialValue: patientRM().fatherName,
          onChanged: (fatherName) => patientRM(
            patientRM().copyWith(fatherName: fatherName),
          ),
          decoration: InputDecoration(
            labelText: 'FATHER NAME',
          ),
        ).pad(),
        DropdownButtonFormField(
          value: patientRM().gender,
          decoration: InputDecoration(
            labelText: 'GENDER',
          ),
          items: Gender.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: e.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (gender) => patientRM(
            patientRM().copyWith(gender: gender!),
          ),
        ).pad(),
        AgeUI(),
      ],
    );
  }
}

class AgeUI extends UI {
  const AgeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: Column(
        children: [
          DropdownButtonFormField(
            value: ageTypeRM.state,
            items: AgeType.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (ageType) => ageTypeRM.state = ageType!,
          ).pad(),
          Slider(
            min: 0,
            max: 100,
            value: ageValueRM.state,
            onChanged: (ageValue) => ageValueRM.state = ageValue,
          ).pad(),
          switch (ageTypeRM.state) {
            AgeType.years => "${patientRM().age.inDays ~/ 365} years".text(),
            AgeType.months => "${patientRM().age.inDays ~/ 30} months".text(),
            AgeType.days => "${patientRM().age.inDays} days".text(),
          }
              .pad(),
        ],
      ),
    );
  }
}

enum AgeType { years, months, days }

Duration get age {
  return switch (ageTypeRM.state) {
    AgeType.years => Duration(days: 365 * ageValueRM.state.toInt()),
    AgeType.months => Duration(days: 30 * ageValueRM.state.toInt()),
    AgeType.days => Duration(days: ageValueRM.state.toInt()),
  };
}

final Injected<AgeType> ageTypeRM = RM.inject<AgeType>(
  () => AgeType.years,
  sideEffects: SideEffects(
    onSetState: (_) => patientRM(patientRM().copyWith(age: age)),
  ),
);
final ageValueRM = RM.inject<double>(
  () => 0,
  sideEffects: SideEffects(
    onSetState: (_) => patientRM(patientRM().copyWith(age: age)),
  ),
);
