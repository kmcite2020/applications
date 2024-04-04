import '../../main.dart';

class SettingsPage extends StatelessWidget {
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
            value: useMaterial3,
            onChanged: (_) => useMaterial3 = _,
          ).pad(),
          DropdownButtonFormField(
            value: themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (_) => themeMode = _,
            decoration: const InputDecoration(labelText: 'Theme Mode'),
          ).pad(),
          DropdownButtonFormField(
            value: materialColor,
            items: Colors.primaries
                .map(
                  (eachMaterialColor) => DropdownMenuItem(
                    value: eachMaterialColor,
                    child: eachMaterialColor.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (_) => materialColor = _,
            decoration: const InputDecoration(
              labelText: 'Material Color',
            ),
          ).pad(),
          DropdownButtonFormField(
            value: font,
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
            onChanged: (_) => font = _,
            decoration: const InputDecoration(labelText: 'Font'),
          ).pad(),
          DropdownButtonFormField(
            value: settings.paddingEnum,
            items: PaddingEnum.values
                .map(
                  (eachPaddingEnum) => DropdownMenuItem(
                    value: eachPaddingEnum,
                    child: eachPaddingEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (_) => paddingEnum = _,
            decoration: const InputDecoration(labelText: 'Padding'),
          ).pad(),
          DropdownButtonFormField(
            value: settings.borderRadiusEnum,
            items: BorderRadiusEnum.values
                .map(
                  (eachBorderRadiusEnum) => DropdownMenuItem(
                    value: eachBorderRadiusEnum,
                    child: eachBorderRadiusEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (_) => borderRadiusEnum = _,
            decoration: const InputDecoration(labelText: 'Border Radius'),
          ).pad(),
        ],
      ),
    );
  }
}
