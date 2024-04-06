import '../../main.dart';

class StatsPage extends UI {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.filled(
            onPressed: () {
              RM.navigate.to(SettingsPage());
            },
            icon: Icon(Icons.settings),
          ).pad(),
        ],
      ),
      body: appState().text().center(),
    );
  }
}
