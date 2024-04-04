import 'dart:convert';

import 'package:flutter/material.dart' hide Builder;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_dermatosis/features/pictures/pictures_view_mode.dart';
import 'package:project_dermatosis/features/settings/settings_page/advanced_themes_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

final SettingsManager settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s),
    ),
  );
  Settings get settings => settingsRM.state;
  void setSettings(Settings settings) {
    settingsRM.state = settings;
  }

  void setThemeMode(themeMode) {
    setSettings(
      settings.copyWith(themeMode: themeMode),
    );
  }

  void setTrueThemeMode(trueThemeMode) {
    setSettings(
      settings.copyWith(trueThemeMode: trueThemeMode),
    );
  }

  void setColorsVisibility(isColorsVisible) {
    setSettings(
      settings.copyWith(isColorsVisible: isColorsVisible),
    );
  }

  void setSearching(isSearching) {
    setSettings(
      settings.copyWith(isSearching: isSearching),
    );
  }

  void setPadding(padding) {
    setSettings(
      settings.copyWith(padding: padding),
    );
  }

  void setHeight(height) {
    setSettings(
      settings.copyWith(height: height),
    );
  }

  void setBorderRadius(borderRadius) {
    setSettings(
      settings.copyWith(borderRadius: borderRadius),
    );
  }

  void setTextScaleFactor(textScaleFactor) {
    setSettings(
      settings.copyWith(textScaleFactor: textScaleFactor),
    );
  }

  void setElevation(elevation) {
    setSettings(
      settings.copyWith(elevation: elevation),
    );
  }

  void setFont(font) {
    setSettings(
      settings.copyWith(font: font),
    );
  }

  void setAdvancedThemeMode(isAdvancedThemingMode) {
    setSettings(
      settings.copyWith(isAdvancedThemingMode: isAdvancedThemingMode),
    );
  }

  void setMaterialColor(materialColor) {
    setSettings(
      settings.copyWith(materialColor: materialColor),
    );
  }

  void setPicturesViewMode(picturesViewMode) {
    setSettings(
      settings.copyWith(picturesViewMode: picturesViewMode),
    );
  }
}

@freezed
class Settings with _$Settings {
  const factory Settings({
    @MaterialColorConverter()
    @Default(Colors.amber)
    MaterialColor materialColor,
    @Default(true) bool trueThemeMode,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool isColorsVisible,
    @Default(false) bool isSearching,
    @Default(8.0) double padding,
    @Default(80.0) double height,
    @Default(8.0) double borderRadius,
    @Default(1.0) double textScaleFactor,
    @Default(8.0) double elevation,
    String? font,
    @Default(false) bool isAdvancedThemingMode,
    @Default(PicturesViewMode.listviewWithDate)
    PicturesViewMode picturesViewMode,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
