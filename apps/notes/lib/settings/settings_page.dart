import 'package:notes/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settings.themeMode,
            items: ThemeMode.values
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settings.viewMode,
            items: ViewMode.values
                .map(
                  (eachViewMode) => DropdownMenuItem(
                    value: eachViewMode,
                    child: eachViewMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: setViewMode,
          ).pad(),
        ],
      ),
    );
  }
}
