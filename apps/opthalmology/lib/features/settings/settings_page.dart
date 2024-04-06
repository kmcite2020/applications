import 'package:opthalmology/features/settings/settings.dart';

import '../../main.dart';

class SettingsPage extends UI {
  static String path = 'configuration';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Configuration'.text(),
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values
                .map(
                  (eachMode) => DropdownMenuItem(
                    value: eachMode,
                    child: eachMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (themeMode) {
              settingsRM.setThemeMode(themeMode!);
            },
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().materialColor,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (materialColor) {
              settingsRM.setMaterialColor(materialColor!);
            },
          ).pad(),
        ],
      ),
    );
  }
}
