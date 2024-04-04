import 'package:patients/main.dart';

final _firstAidTextRM = RM.injectTextEditing(autoDispose: false);

class FirstAidManager extends UI {
  const FirstAidManager({
    super.key,
    required this.patientID,
  });
  final String patientID;
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      patientID: patientID,
      builder: (patient) {
        bool isFirstAidNotePresent() =>
            patient.firstAidNotes.contains(_firstAidTextRM.text);

        void addFirstAidNote() {
          setPatient(
            patient.copyWith(
              complaintNotes: List.of(patient.firstAidNotes)
                ..add(_firstAidTextRM.text),
            ),
          );
          _firstAidTextRM.controller.clear();
        }

        void removeFirstAidNote(String complaint) => setPatient(
              patient.copyWith(
                firstAidNotes: List.of(patient.firstAidNotes)
                  ..remove(complaint),
              ),
            );

        return Column(
          children: [
            'FIRST AID NOTES'.text(textScaleFactor: 2).pad(),
            TextFormField(
              controller: _firstAidTextRM.controller,
              onFieldSubmitted: (_) => addFirstAidNote(),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: isFirstAidNotePresent() ? null : addFirstAidNote,
                  icon: const Icon(Icons.add),
                ).pad(
                  padding: EdgeInsets.only(right: settingsManager.padding),
                ),
              ),
            ).pad(),
            ...patient.firstAidNotes.map(
              (eachFirstAidNote) => ListTile(
                title: eachFirstAidNote.text().pad(),
                trailing: IconButton(
                  onPressed: () => removeFirstAidNote(eachFirstAidNote),
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
