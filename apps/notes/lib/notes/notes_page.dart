import 'package:extensions/main.dart';
import 'package:manager/manager.dart';
import 'package:notes/drawer/drawer.dart';
import 'package:notes/notes/notes.dart';
import 'package:notes/settings/settings.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        title: 'Notes'.text(),
        actions: [
          IconButton(
            onPressed: () {
              switch (viewModeRM()) {
                case ViewMode.grid:
                  viewModeRM(ViewMode.list);
                  break;
                case ViewMode.list:
                  viewModeRM(ViewMode.grid);
                  break;
              }
            },
            icon: Icon(
              switch (viewModeRM()) {
                ViewMode.list => Icons.grid_3x3,
                ViewMode.grid => Icons.list,
              },
            ),
          ).pad()
        ],
      ),
      body: switch (viewModeRM()) {
        ViewMode.list => ListView.builder(
            itemCount: notesRM().cache.length,
            itemBuilder: (context, index) {
              final note = notesRM().cache.values.toList()[index];
              return ListTile(
                title: note.text(),
              );
            },
          ),
        ViewMode.grid => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: notesRM().cache.length,
            itemBuilder: (context, index) {
              final note = notesRM().cache.values.toList()[index];
              return ListTile(
                title: note.text(),
              );
            },
          ),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notesRM.setNote(
            Note(
              id: randomID,
            ),
          );
        },
      ),
    );
  }
}
