import 'package:opthalmology/features/study_timer/study_timer.dart';
import 'package:opthalmology/main.dart';

import 'create_new_folder_page.dart';

class FoldersPage extends Page {
  const FoldersPage({super.key});

  @override
  PreferredSizeWidget? appBar() {
    return AppBar(
      title: 'Folders'.text(),
      actions: [
        IconButton(
          onPressed: () {
            isar.write(
              (isar) {
                isar.flashCards.put(FlashCard()..id = randomID);
              },
            );
          },
          icon: Icon(Icons.create),
        ),
        IconButton(
          onPressed: toCreateNewGroupDialog,
          icon: Icon(Icons.create_new_folder),
        ).pad(),
      ],
    );
  }

  @override
  Widget body() {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        ...foldersRM.rm.onOrElse(
          onWaiting: () => [
            CircularProgressIndicator().center(),
            CircularProgressIndicator().center(),
            CircularProgressIndicator().center(),
          ],
          orElse: (folders) {
            return folders.map(
              (e) => Card.outlined(
                color: e.color,
                child: ElevatedButton(
                  onPressed: () => toFolder(e.id),
                  child: e.folder.text().center(),
                ).pad(),
              ),
            );
          },
        ),
      ],
    );
  }
}

void write(void writer(Isar isar)) => isar.write((isar) => writer(isar));
