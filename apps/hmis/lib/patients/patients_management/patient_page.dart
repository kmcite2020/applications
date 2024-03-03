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
          onPressed: () => patientsPagesRM(PatientsPages.list),
          icon: const FaIcon(
            FontAwesomeIcons.heartPulse,
          ),
        ),
        title: patient.name,
      ),
      body: TextFormField(
        initialValue: patient.name,
        onChanged: (value) {
          patientsRM.add(
            patient.copyWith(name: value),
          );
        },
      ).pad(),
    );
  }
}
