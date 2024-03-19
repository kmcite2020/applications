import 'package:roster_system/main.dart';

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
            value: settingsRM.state.themeMode,
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
            value: settingsRM.state.materialColor,
            items: Colors.primaries.map(
              (eachMaterialColor) {
                return DropdownMenuItem(
                  value: eachMaterialColor,
                  child: eachMaterialColor.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: setMaterialColor,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              RM.navigate.to(const DepartmentsPage());
            },
            child: 'Departments'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
