import 'package:flutter/material.dart';
import 'package:project_dermatosis/features/core/shared.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../main.dart';
import 'settings.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});
  static const name = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SettingsPage.name),
        // leading: LeadingBackButton(),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            padding: EdgeInsets.all(settingsManager.settings.padding),
            value: settingsManager.settings.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name.toUpperCase()),
                  ),
                )
                .toList(),
            onChanged: settingsManager.setThemeMode,
          ),
          SwitchListTile(
            title: const Text('TRUE COLORS MODE'),
            subtitle: const Text('toggle true balck or white'),
            value: settingsManager.settings.trueThemeMode,
            onChanged: settingsManager.setTrueThemeMode,
          ),
          SwitchListTile(
            title: const Text('ADVANCED THEMING'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('enable advanced theming').pad(),
                ElevatedButton(
                  onPressed: () {
                    // router.to(AdvancedThemingPage.name);
                  },
                  child: const Text('Go to Advanced Theming'),
                ),
              ],
            ),
            value: settingsManager.settings.isAdvancedThemingMode,
            onChanged: settingsManager.setAdvancedThemeMode,
          ),
          GridView.count(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: Colors.primaries
                .take(settingsManager.settings.isColorsVisible ? 18 : 2)
                .map<Widget>(
              (e) {
                return e.text();
              },
            ).toList()
              ..insert(
                0,
                Switch(
                  value: settingsManager.settings.isColorsVisible,
                  onChanged: settingsManager.setColorsVisibility,
                ),
              )
              ..add(
                const ColorIndexWidget(),
              ),
          ),
          Slider(
            label: 'ELEVATION',
            value: settingsManager.settings.elevation,
            onChanged: settingsManager.setElevation,
            min: constants.minElevation,
            max: constants.maxElevation,
          ),
          Slider(
            label: 'HEIGHT',
            value: settingsManager.settings.height,
            onChanged: settingsManager.setHeight,
            min: constants.minHeight,
            max: constants.maxHeight,
          ),
          Slider(
            label: 'PADDING',
            value: settingsManager.settings.padding,
            onChanged: settingsManager.setPadding,
            min: constants.minPadding,
            max: constants.maxPadding,
          ),
          Slider(
            label: 'BORDER RADIUS',
            value: settingsManager.settings.borderRadius,
            onChanged: settingsManager.setBorderRadius,
            min: constants.minBorderRadius,
            max: constants.maxBorderRadius,
          ),
          Slider(
            label: 'TEXT SCALE FACTOR',
            value: settingsManager.settings.textScaleFactor,
            onChanged: settingsManager.setTextScaleFactor,
            min: constants.minTextScaleFactor,
            max: constants.maxTextScaleFactor,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('BACKUP ALL DATA LOCALLY'),
          ).pad(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('RESTORE DATA FROM BACKUP'),
          ).pad(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('GOTO ARCHIVES'),
          ).pad(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('CLEAR ALL ARCHIVES'),
          ).pad(),
          ElevatedButton(
            onPressed: () {
              // router.to(InformationsPage.name);
            },
            child: const Text('DEVICE INFORMATIONS'),
          ).pad(),
        ],
      ),
    );
  }
}

class ColorIndexWidget extends ReactiveStatelessWidget {
  const ColorIndexWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child:
          (Colors.primaries.indexOf(settingsManager.settings.materialColor) + 1)
              .text(),
    ).pad();
  }
}
