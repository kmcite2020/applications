import '../../main.dart';

class StatsPage extends Page {
  const StatsPage({super.key});

  @override
  PreferredSizeWidget? appBar() {
    return AppBar(
      actions: [
        IconButton.filled(
          onPressed: () {
            RM.navigate.to(SettingsPage());
          },
          icon: Icon(Icons.settings),
        ).pad(),
      ],
    );
  }

  @override
  Widget? body() {
    return appState().text().center();
  }
}
