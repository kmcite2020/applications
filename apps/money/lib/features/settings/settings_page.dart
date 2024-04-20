import '../../main.dart';

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
          SwitchListTile(
            title: 'Material 3'.text(),
            subtitle: 'Enable Material 3 Support'.text(),
            value: settingsRM().useMaterial3,
            onChanged: (useMaterial3) => settingsRM(
              SettingsEvent.useMaterial3(useMaterial3),
            ),
          ).pad(),
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
            onChanged: (themeMode) => settingsRM(
              SettingsEvent.themeMode(themeMode!),
            ),
            decoration: const InputDecoration(labelText: 'Theme Mode'),
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().materialColor,
            items: Colors.primaries
                .map(
                  (eachMaterialColor) => DropdownMenuItem(
                    value: eachMaterialColor,
                    child: eachMaterialColor.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (color) => settingsRM(SettingsEvent.color(color!)),
            decoration: const InputDecoration(
              labelText: 'Material Color',
            ),
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().font,
            items: fonts.map(
              (eachFont) {
                return DropdownMenuItem(
                  value: eachFont,
                  child: eachFont.toString().toUpperCase().text(
                        style: TextStyle(
                          fontFamily: fontFamily(eachFont),
                        ),
                      ),
                );
              },
            ).toList(),
            onChanged: (font) => settingsRM(SettingsEvent.font(font!)),
            decoration: const InputDecoration(labelText: 'Font'),
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().paddingEnum,
            items: PaddingEnum.values
                .map(
                  (eachPaddingEnum) => DropdownMenuItem(
                    value: eachPaddingEnum,
                    child: eachPaddingEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (padding) => settingsRM(
              SettingsEvent.padding(padding!),
            ),
            decoration: const InputDecoration(labelText: 'Padding'),
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().borderRadiusEnum,
            items: BorderRadiusEnum.values
                .map(
                  (eachBorderRadiusEnum) => DropdownMenuItem(
                    value: eachBorderRadiusEnum,
                    child: eachBorderRadiusEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (borderRadius) => settingsRM(
              SettingsEvent.borderRadius(borderRadius!),
            ),
            decoration: const InputDecoration(labelText: 'Border Radius'),
          ).pad(),
        ],
      ),
    );
  }
}
