import 'package:manager/manager.dart';
import 'package:roster_system/settings/settings_manager.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (themeMode) {
              settingsRM(
                settingsRM().copyWith(
                  themeMode: themeMode!,
                ),
              );
            },
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().materialColor,
            items: Colors.primaries.map(
              (eachMaterialColor) {
                return DropdownMenuItem(
                  value: eachMaterialColor,
                  child: eachMaterialColor.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (materialColor) {
              settingsRM(
                settingsRM().copyWith(
                  materialColor: materialColor!,
                ),
              );
            },
          ).pad(),
        ],
      ),
    );
  }
}
