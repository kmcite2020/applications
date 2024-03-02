import 'package:manager/manager.dart';
import 'package:notes/drawer/drawer.dart';
import 'package:notes/notes/note_page/note_page.dart';
import 'package:notes/notes/notes.dart';
import 'package:notes/settings/settings.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              switch (settingsRM().viewMode) {
                case ViewMode.grid:
                  settingsRM.setViewMode(ViewMode.list);
                  break;
                case ViewMode.list:
                  settingsRM.setViewMode(ViewMode.grid);
                  break;
              }
            },
            icon: Icon(
              switch (settingsRM().viewMode) {
                ViewMode.list => Icons.grid_3x3,
                ViewMode.grid => Icons.list,
              },
            ),
          ).pad()
        ],
      ),
      body: switch (settingsRM().viewMode) {
        ViewMode.list => ListView.builder(
            itemCount: notesRM()().length,
            itemBuilder: (context, index) {
              final note = notesRM()()[index];
              return Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius:
                      BorderRadius.circular(settingsRM().borderRadius),
                ),
                child: ListTile(
                  title: note.title.text(),
                  subtitle: note.details.text(),
                  onTap: () {
                    RM.navigate.to(NotePage(note.id));
                  },
                ),
              );
            },
          ),
        ViewMode.grid => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: notesRM()().length,
            itemBuilder: (context, index) {
              final note = notesRM()()[index];
              return Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius:
                      BorderRadius.circular(settingsRM().borderRadius),
                ),
                child: ListTile(
                  title: note.title.text(),
                  subtitle: note.details.text(),
                  onTap: () {
                    RM.navigate.to(NotePage(note.id));
                  },
                ),
              );
            },
          ),
      },
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          notesRM.setNote(
            Note(
              id: randomID,
              timeCreated: DateTime.now(),
            ),
          );
        },
      ),
    );
  }
}
