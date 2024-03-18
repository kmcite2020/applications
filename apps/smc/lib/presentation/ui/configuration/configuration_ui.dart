import 'package:smc/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const BackFloatingButton(),
      appBar: AppBar(
        title: 'Settings'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settings.themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settings.materialColor,
            items: Colors.primaries.map(
              (e) {
                return DropdownMenuItem(
                  value: e,
                  child: e.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (materialColor) {},
          ).pad(),
          Slider(
            value: settings.padding,
            onChanged: setPadding,
            // name: 'Padding',
            min: 5,
            max: 12,
          ).pad(),
          Slider(
            value: settings.borderRadius,
            onChanged: setBorderRadius,
            // name: 'Border Radius',
            min: 4,
            max: 30,
          ).pad(),
        ],
      ),
    );
  }
}
