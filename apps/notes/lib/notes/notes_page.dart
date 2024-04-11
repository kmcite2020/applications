import 'package:notes/main.dart';
import 'package:notes/notes/note_tile.dart';

import 'add_note_page.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'NOTES'.text(),
      ),
      body: NotesListUI(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => to(
          AddNotePage(),
        ),
        isExtended: true,
        child: Icon(Icons.add),
      ),
    );
  }
}

class NotesListUI extends UI {
  NotesListUI({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notesRM().length,
      itemBuilder: (context, index) => NoteTile(note: notesRM()[index]),
    );
  }
}
