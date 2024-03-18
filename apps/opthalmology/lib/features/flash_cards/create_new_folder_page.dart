import 'package:opthalmology/main.dart';

import 'folder_page.dart';

class CreateNewFolderPage extends Page {
  @override
  void didMountWidget(BuildContext context) => newFolderRM.state = Folder();

  @override
  PreferredSizeWidget? appBar() => AppBar(
        title: 'Create New Folder'.text(),
      );

  @override
  Widget? body() => Column(
        children: [
          TextFormField(
            initialValue: newFolder()?.folder,
            onChanged: onNewFolderTitleChanged,
          ).pad(),
          DropdownButtonFormField(
            value: Colors.primaries.firstOrNull,
            items: Colors.primaries
                .map(
                  (color) => DropdownMenuItem(
                    child: color.colorName.text(),
                    value: color,
                  ),
                )
                .toList(),
            onChanged: onNewFolderColorChanged,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              RM.navigate.back();
              foldersRM.addFolder(newFolder()!);
            },
            child: 'Save Group'.text(),
          ).pad(),
        ],
      );
}

final toCreateNewGroupDialog = () => RM.navigate.to(CreateNewFolderDialog());
final toFolder = (folderID) => RM.navigate.to(FolderPage(folderID: folderID));

class CreateNewFolderDialog extends UI {
  const CreateNewFolderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: CreateNewFolderPage(),
    );
  }
}

final newFolderRM = RM.inject<Folder?>(() => null);
final newFolder = () => newFolderRM.state;

final onNewFolderColorChanged = (MaterialColor? color) {
  if (color == null) return;

  newFolderRM.setState(
    (_) {
      newFolderRM.state = newFolder()?..color = color;
      return newFolder();
    },
  );
};

final onNewFolderTitleChanged = (String? folder) {
  if (folder == null) return;
  newFolderRM.setState(
    (_) {
      newFolderRM.state = newFolder()?..folder = folder;
      return newFolder();
    },
  );
};
