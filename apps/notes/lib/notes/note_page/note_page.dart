import 'package:manager/manager.dart';
import 'package:notes/notes/notes.dart';

class NotePage extends UI {
  const NotePage(this.noteID, {super.key});

  final String noteID;

  @override
  Widget build(BuildContext context) {
    final note = notesRM.getNote(noteID);
    if (note.isNull) {
      return Scaffold(
        appBar: AppBar(
          title: 'Deleted'.text(),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              tooltip: 'create one?',
              onPressed: () {
                notesRM.setNote(
                  Note(
                    id: noteID,
                    timeCreated: DateTime.now(),
                  ),
                );
              },
              icon: const Icon(Icons.create),
            ).pad(),
          ],
        ),
        body: 'Not found'.text(textScaleFactor: 3).center(),
      );
    }
    note!;
    return Scaffold(
      appBar: AppBar(
        title: 'Details'.text(),
        actions: [
          IconButton(
            onPressed: () {
              notesRM.removeNote(note);
            },
            icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: note.title,
            onChanged: (title) {
              notesRM.setNote(note.copyWith(title: title));
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              filled: true,
            ),
          ).pad(),
          Expanded(
            child: TextFormField(
              initialValue: note.details,
              onChanged: (details) {
                notesRM.setNote(
                  note.copyWith(details: details),
                );
              },
              textAlignVertical: TextAlignVertical.top,
              expands: true,
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
              ),
            ).pad(),
          ),
          note.timeCreated.human().pad(),
        ],
      ),
    );
  }
}
