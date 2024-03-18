import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor materialColor,
    @Default(ThemeMode.system) final ThemeMode themeMode,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      toJson: (s) => jsonEncode(s),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );
  Settings get settings => settingsRM.state;

  void setSettings(Settings settings) => settingsRM.state = settings;

  void setThemeMode(ThemeMode themeMode) =>
      setSettings(settings.copyWith(themeMode: themeMode));

  void setMaterialColor(MaterialColor materialColor) =>
      setSettings(settings.copyWith(materialColor: materialColor));
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
