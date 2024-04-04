import 'package:rebuilder_docs/main.dart';

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
            onChanged: (themeMode) => settings(
              settings.copyWith(themeMode: themeMode!),
            ),
          ).pad(),
          DropdownButtonFormField(
            value: settings.materialColor,
            items: Colors.primaries
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (materialColor) => settings(
              settings.copyWith(materialColor: materialColor!),
            ),
          ).pad(),
          ElevatedButton.icon(
            onPressed: () {
              navigator.to(BackupPage());
            },
            icon: Icon(
              Icons.backup_table,
            ),
            label: 'Backup'.text(),
          ).pad()
        ],
      ),
    );
  }
}
