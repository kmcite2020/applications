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
            onPressed: () => RM.navigate.to(SettingsPage()),
            icon: Icon(Icons.settings),
          ),
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
          ).pad()
        ],
      ),
      body: switch (settings.viewMode) {
        ViewMode.list => ListView.builder(
            itemCount: notes().length,
            itemBuilder: (context, index) {
              final note = notes()[index];
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
            itemCount: notes().length,
            itemBuilder: (context, index) {
              final note = notes()[index];
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
          setNote(
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
