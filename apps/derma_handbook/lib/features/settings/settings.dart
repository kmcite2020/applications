import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.g.dart';

@JsonSerializable()
@CopyWith()
class Settings {
  final ThemeMode themeMode;
  @MaterialColorConverter()
  final MaterialColor materialColor;
  final double padding;
  final double elevation;
  final double height;
  final bool areMoreColors;
  final bool isFirstStart;
  final double borderRadius;
  final double textScaleFactor;
  final double headlineTextSize;
  final int pageIndex;
  const Settings({
    this.themeMode = ThemeMode.system,
    this.materialColor = Colors.amber,
    this.padding = 8,
    this.elevation = 8,
    this.height = 80,
    this.areMoreColors = false,
    this.isFirstStart = false,
    this.borderRadius = 8,
    this.textScaleFactor = 1,
    this.headlineTextSize = 1.2,
    this.pageIndex = 0,
  });
  toJson() => _$SettingsToJson(this);
  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(() => Settings());
  set settings(Settings value) => settingsRM.state = value;
  Settings get settings => settingsRM.state;

  void headlinTextSize(double? value) {
    settings = settings.copyWith(headlineTextSize: value);
  }

  void themeMode(ThemeMode? value) {
    settings = settings.copyWith(themeMode: value);
  }

  void padding(double value) {
    settings = settings.copyWith(padding: value);
  }

  void onBorderRadiusChanged(double value) {
    settings = settings.copyWith(borderRadius: value);
  }

  void materialColor(MaterialColor? value) {
    settings = settings.copyWith(materialColor: value);
  }

  void elevation(double value) {
    settings = settings.copyWith(elevation: value);
  }

  void height(double value) {
    settings = settings.copyWith(height: value);
  }

  void isFirstStart(bool value) {
    settings = settings.copyWith(isFirstStart: value);
  }

  void onDestinationSelected(int value) {
    settings = settings.copyWith(pageIndex: value);
  }

  void areMoreColorsAvailable(bool? value) {
    settings = settings.copyWith(areMoreColors: value);
  }
}
