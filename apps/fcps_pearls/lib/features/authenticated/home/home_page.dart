import 'package:manager/manager.dart';
import '../authenticated.dart';

class HomePage extends UI {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PEARLS'.text(),
      ),
      body: ListView(
        children: [
          ElevatedButton.icon(
            icon: Icon(
              Icons.diamond,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.pearls);
            },
            label: Row(
              children: [
                'Pearls'.text(textScaleFactor: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.subtitles_outlined,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.study);
            },
            label: Row(
              children: [
                'Study Mode'.text(textScaleFactor: 2).pad(),
              ],
            ),
          ).pad(),
          Tooltip(
            message: 'Unimplemented',
            child: ElevatedButton.icon(
              icon: Icon(
                Icons.mic_external_off,
                size: 40,
              ),
              onPressed: () {
                authenticatedPageRM(AuthenticatedPage.exam);
              },
              label: Row(
                children: [
                  'Exam Mode'.text(textScaleFactor: 2).pad(),
                ],
              ),
            ).pad(),
          ),
          ElevatedButton.icon(
            icon: Icon(
              Icons.edit_note,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.studio);
            },
            label: Row(
              children: [
                'Studio Mode'.text(textScaleFactor: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.settings,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.settings);
            },
            label: Row(
              children: [
                'Settings'.text(textScaleFactor: 2).pad(),
              ],
            ),
          ).pad(),
        ],
      ),
    );
  }
}
