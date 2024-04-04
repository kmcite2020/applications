import '../../../main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
        automaticallyImplyLeading: false,
        actions: const [
          BackIconButton(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          DropdownButtonFormField(
            value: settingsManager.settings.themeMode,
            items: ThemeMode.values
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(padding: 0),
                  ),
                )
                .toList(),
            onChanged: settingsManager.onThemeModeChanged,
          ).pad(),
          DropdownButtonFormField(
            value: settingsManager.settings.materialColor,
            items: Colors.primaries
                .map(
                  (eachMaterialColor) => DropdownMenuItem(
                    value: eachMaterialColor,
                    child: eachMaterialColor.colorName
                        .toUpperCase()
                        .text(padding: 0),
                  ),
                )
                .toList(),
            onChanged: settingsManager.onMaterialColorChanged,
          ).pad(),
          // const ToolsUI(),
          const BorderRadiusModifier(),
          const UserUI(),
        ],
      ),
    );
  }
}
