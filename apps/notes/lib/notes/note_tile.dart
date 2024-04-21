import 'package:notes/main.dart';

class NoteTile extends UI {
  final Note note;

  NoteTile({super.key, required this.note});
  @override
  Widget build(context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          note.title.text().pad(),
          note.timeCreated.toIso8601String().text().pad(),
          SwitchListTile(
            title: note.noteStatus.name.text().pad(),
            value: switch (note.noteStatus) {
              NoteStatus.Complete => true,
              NoteStatus.Incomplete => false,
            },
            onChanged: (value) {
              notesRM(
                note.copyWith(
                  noteStatus: switch (value) {
                    false => NoteStatus.Incomplete,
                    true => NoteStatus.Complete,
                  },
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              to(NoteDetailsPage(id: note.id));
            },
            child: 'Go to Details'.text(),
          ).pad(),
        ],
      ).pad(),
    ).pad();
  }
}
