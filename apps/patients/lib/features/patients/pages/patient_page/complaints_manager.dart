import 'package:patients/main.dart';

final _complaintTextRM = RM.injectTextEditing(autoDispose: false);

class ComplaintsManager extends UI {
  const ComplaintsManager({
    super.key,
    required this.patientID,
  });
  final String patientID;
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      patientID: patientID,
      builder: (patient) {
        bool isComplaintPresent() =>
            patient.complaintNotes.contains(_complaintTextRM.text);
        void addComplaint() {
          setPatient(
            patient.copyWith(
              complaintNotes: List.of(patient.complaintNotes)
                ..add(_complaintTextRM.text),
            ),
          );
          _complaintTextRM.controller.clear();
        }

        void removeComplaint(String complaint) => setPatient(
              patient.copyWith(
                complaintNotes: List.of(patient.complaintNotes)
                  ..remove(complaint),
              ),
            );

        return Column(
          children: [
            'COMPLAINTS'.text(textScaleFactor: 2).pad(),
            TextFormField(
              controller: _complaintTextRM.controller,
              onFieldSubmitted: (_) => addComplaint(),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: isComplaintPresent() ? null : addComplaint,
                  icon: const Icon(Icons.add),
                ).pad(
                  padding: EdgeInsets.only(right: settingsManager.padding),
                ),
              ),
            ).pad(),
            ...patient.complaintNotes.map(
              (eachComplaint) => ListTile(
                title: eachComplaint.text().pad(),
                trailing: IconButton(
                  onPressed: () => removeComplaint(eachComplaint),
                  icon: const Icon(Icons.delete),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
