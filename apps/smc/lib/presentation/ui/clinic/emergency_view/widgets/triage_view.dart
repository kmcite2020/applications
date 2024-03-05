import 'package:smc/main.dart';

class TriageView extends UI {
  const TriageView({
    super.key,
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: patient.triage,
      items: Triage.values
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: e.text(),
            ),
          )
          .toList(),
      onChanged: (value) {
        patientsBloc.setTriage(
          value!,
          patient,
        );
      },
    ).pad();
  }
}
