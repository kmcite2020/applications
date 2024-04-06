import 'package:notes/main.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'NOTES'.text(),
        actions: [
          IconButton(
            onPressed: () => switch (settings.viewMode) {
              ViewMode.grid => setViewMode(ViewMode.list),
              ViewMode.list => setViewMode(ViewMode.grid),
            },
            icon: Icon(
              switch (settings.viewMode) {
                ViewMode.list => Icons.grid_3x3,
                ViewMode.grid => Icons.list,
              },
            ),
          ),
          IconButton(
            onPressed: () => to(SettingsPage()),
            icon: Icon(Icons.settings),
          ).pad(),
        ],
      ),
      body: switch (settings.viewMode) {
        ViewMode.list => ListView.builder(
            itemCount: notesRM().length,
            itemBuilder: (context, index) {
              final note = notesRM()[index];
              return Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(settings.borderRadius),
                ),
                child: ListTile(
                  title: note.title.text(),
                  subtitle: note.details.text(),
                  onTap: () {
                    to(NotePage(note.id));
                  },
                ),
              );
            },
          ),
        ViewMode.grid => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: notesRM().length,
            itemBuilder: (context, index) {
              final note = notesRM()[index];
              return Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(settings.borderRadius),
                ),
                child: ListTile(
                  title: note.title.text(),
                  subtitle: note.details.text(),
                  onTap: () {
                    to(NotePage(note.id));
                  },
                ),
              );
            },
          ),
      },
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          notesRM.save(
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
