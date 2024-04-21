import 'package:colornames/colornames.dart';
import 'package:flutter/cupertino.dart';
import 'package:manager/manager.dart';
import 'package:roster_system/departments/ui/departments_page.dart';
import 'package:roster_system/main.dart';

import 'settings.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
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
            onChanged: (themeMode) =>
                settingsRM(SettingsEvent.themeMode(themeMode!)),
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
            onChanged: (color) => settingsRM(SettingsEvent.material(color!)),
          ).pad(),
          CupertinoSlider(
            max: 30,
            value: settingsRM().borderRadius,
            onChanged: (br) => settingsRM(SettingsEvent.borderRadius(br)),
          ).pad(),
          CupertinoButton.filled(
            onPressed: () {
              to(const DepartmentsPage());
            },
            child: 'Departments'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
