import 'package:batteries/batteries/pages/settings_page.dart';
import 'package:batteries/main.dart';

class BatteriesStorePage extends UI {
  const BatteriesStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'HOME'.text(),
        actions: [
          IconButton.outlined(
            onPressed: () {
              RM.navigate.to(
                SettingsPage(),
              );
            },
            icon: Icon(Icons.settings),
          ).pad(),
        ],
      ),
    );
  }
}
