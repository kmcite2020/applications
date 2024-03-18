import 'package:opthalmology/features/study_timer/study_timer.dart';

import '../../main.dart';

class FolderPage extends Page {
  final String folderID;
  const FolderPage({
    super.key,
    required this.folderID,
  });
  static late Injected<Folder?> folderRM;
  @override
  void didMountWidget(BuildContext context) {
    folderRM = RM.injectStream(
      () => isar.folders.watchObject(folderID, fireImmediately: true),
    );
  }

  @override
  PreferredSizeWidget? appBar() => folderRM.onOrElse(
        onWaiting: () => AppBar(
          title: CircularProgressIndicator().center(),
          backgroundColor: Colors.amberAccent,
        ),
        orElse: (folder) {
          if (folder == null)
            return AppBar(
              title: CircularProgressIndicator().center(),
              backgroundColor: Colors.tealAccent,
            );
          return AppBar(
            title: folder.folder.text(),
            backgroundColor: folder.color,
          );
        },
      );

  @override
  Widget? body() {
    return folderRM.onOrElse(
      onWaiting: () => CircularProgressIndicator().center(),
      orElse: (folder) {
        if (folder == null) return Card.filled();
        final flashCards = flashesRM
            .call()
            .where(
              (element) => element.folder == folder.folder,
            )
            .toList();
        return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                flashesRM.addFlash(FlashCard(), folder);
              },
              child: 'Add FlashCard'.text(),
            ).pad(),
            Container(
              height: 500,
              child: Card.outlined(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: flashCards.length,
                  itemBuilder: (context, index) {
                    try {
                      return Card.filled();
                    } catch (e) {
                      return e.text().center();
                    }
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void didUnmountWidget() => folderRM.dispose();
}
