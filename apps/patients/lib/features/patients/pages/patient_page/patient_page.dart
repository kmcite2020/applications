import '../../../../main.dart';

class PatientPage extends UI {
  const PatientPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      patientID: id,
      builder: (patient) {
        return Scaffold(
          appBar: AppBar(
            title: patient.name.text(),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {
                  setPatient(
                    patient.copyWith(attended: !patient.attended),
                  );
                },
                icon: Icon(
                  patient.attended ? Icons.attach_money : Icons.face,
                ),
              ),
              IconButton(
                onPressed: () {
                  setPatient(
                    patient.copyWith(editing: !patient.editing),
                  );
                },
                icon: Icon(
                  patient.editing ? Icons.edit_attributes : Icons.read_more,
                ),
              ),
              const BackIconButton(),
            ],
          ),
          body: Container(
            color: patient.attended ? Colors.redAccent : Colors.deepPurple,
            child: patient.editing
                ? EditingModeUI(patientID: id)
                : ReadingModeUI(id: id),
          ),
        );
      },
    );
  }
}
