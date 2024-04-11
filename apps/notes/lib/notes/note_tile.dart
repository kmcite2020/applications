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
          note.timeCreated.text().pad(),
          note.noteStatus.name.text().pad(),
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
