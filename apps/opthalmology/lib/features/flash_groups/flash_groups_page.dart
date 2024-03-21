import 'package:opthalmology/features/flash_groups/flash_groups.dart';
import 'package:opthalmology/main.dart';

class FlashGroupsPage extends Page {
  const FlashGroupsPage({super.key});

  @override
  PreferredSizeWidget? appBar() {
    return AppBar(
      title: 'Folders'.text(),
      actions: [
        IconButton(
          onPressed: () {
            saveFlashCard(
              FlashCard(
                flashGroup: FlashGroup(),
              ),
            );
          },
          icon: Icon(Icons.create),
        ),
        // IconButton(
        //   onPressed: toCreateNewGroupDialog,
        //   icon: Icon(Icons.create_new_folder),
        // ).pad(),
      ],
    );
  }

  @override
  Widget body() {
    return GridView.count(
      crossAxisCount: 3,
      children: flashGroups().values.map(
        (folder) {
          return Card.outlined(
            color: Colors.primaries[folder.colorIndex],
            child: ElevatedButton(
              onPressed: () {
                // toFolder(folder.id);
              },
              child: folder.name.text().center(),
            ).pad(),
          );
        },
      ).toList(),
    );
  }
}
