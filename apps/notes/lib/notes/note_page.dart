import 'package:manager/manager.dart';
import 'package:notes/notes/notes.dart';

import 'edit_note_page.dart';
import 'note_builder.dart';

class NoteDetailsPage extends UI {
  const NoteDetailsPage({super.key, required this.id});
  final String id;
  @override
  Widget build(context) {
    return NoteBuilder(
      id: id,
      builder: (context, note) {
        return Scaffold(
          appBar: AppBar(
            title: note.title.text(),
          ),
          body: Column(
            children: [
              note.title.text().pad(),
              note.details.text().pad(),
              'completionStatus'.text(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      to(EditNotePage(id: id));
                    },
                    child: 'Edit Note'.text(),
                  ).pad(),
                  ElevatedButton(
                    onPressed: () => notesRM.delete(note.id),
                    child: 'Delete Note'.text(),
                  ).pad(),
                ],
              ),
              note.timeCreated.text().pad(),
            ],
          ),
        );
      },
    );
  }
}
