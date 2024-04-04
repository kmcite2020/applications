import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/settings/settings_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:colornames/colornames.dart';

import '../backup/backup.dart';
import '../backup/backup_bloc.dart';
import '../core/core.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: navigator.back,
            icon: const Icon(Icons.home),
          ),
        ],
        leading: LeadingBackButton(),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsBloc.settings.themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  child: eachThemeMode.name.toUpperCase().text(),
                  value: eachThemeMode,
                );
              },
            ).toList(),
            onChanged: settingsBloc.setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settingsBloc.settings.materialColor,
            items: Colors.primaries
                .map(
                  (eachMaterialColor) => DropdownMenuItem(
                    child: eachMaterialColor.colorName.toUpperCase().text(),
                    value: eachMaterialColor,
                  ),
                )
                .toList(),
            onChanged: settingsBloc.setMaterialColor,
          ).pad(),
          SwitchListTile(
            title: 'Operator Mono'.text(),
            value: settingsBloc.font == Font.operatorMono,
            onChanged: (_) {
              if (_) {
                settingsBloc.setFont(Font.operatorMono);
              } else {
                settingsBloc.setFont(Font.defaultFont);
              }
            },
          ),
          DropdownButtonFormField(
            value: settingsBloc.font,
            items: Font.values
                .map(
                  (eachFont) => DropdownMenuItem(
                    value: eachFont,
                    child: eachFont.name.text(),
                  ),
                )
                .toList(),
            onChanged: settingsBloc.setFont,
          ).pad(),
          'Available Backups'.text(2).pad(),
          switch (backupsBloc.backupModel.backupStatus) {
            BackupStatus.error => "ERRORS".text(),
            BackupStatus.idle => Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        backupsBloc.backup();
                      },
                      child: 'Backup'.text(),
                    ).pad(),
                  ],
                ),
              ),
            BackupStatus.working => Column(
                children: [
                  CircularProgressIndicator(),
                  "WORKING".text(),
                  ElevatedButton(
                    onPressed: () {},
                    child: 'Cancel'.text(),
                  ),
                ],
              ),
          }
              .pad(),
          ...backupsBloc.backupModel.paths.map(
            (e) => ElevatedButton(
              onPressed: () {},
              child: e.text(),
            ).pad(),
          )
        ],
      ),
    );
  }
}
