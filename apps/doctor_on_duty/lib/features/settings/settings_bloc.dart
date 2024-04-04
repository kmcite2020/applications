// ignore_for_file: body_might_complete_normally_nullable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'settings.dart';

final settingsBloc = SettingsBloc();

class SettingsBloc {
  final settingsRM = RM.inject(
    Settings.init,
    persist: () => PersistState(
      key: 'settings',
      toJson: (settings) => jsonEncode(settings.toJson()),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );

  void setSettings(Settings settings) => settingsRM..state = settings;

  Settings get settings => settingsRM.state;

  void setThemeMode(ThemeMode? themeMode) {
    setSettings(settings.copyWith(themeMode: themeMode!));
  }

  void setMaterialColor(MaterialColor? materialColor) {
    setSettings(settings.copyWith(materialColor: materialColor!));
  }

  Font get font => settings.font;
  void setFont(Font? font) {
    setSettings(settings.copyWith(font: font!));
  }

  void setBorderRadius(double borderRadius) {
    setSettings(settings.copyWith(borderRadius: borderRadius));
  }

  void setPadding(double padding) {
    setSettings(settings.copyWith(padding: padding));
  }
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

enum Font {
  azeretMono('Azeret Mono'),
  comfortaa('Comfortaa'),
  operatorMono('Operator Mono'),
  lotion('Lotion'),
  dMMono('DM Mono'),
  dosis('Dosis'),
  firaSans('Fira Sans'),
  iBMPlexMono('IBM Plex Mono'),
  josefinSans('Josefin Sans'),
  montserrat('Montserrat'),
  spaceMono('Space Mono'),
  ubuntu('Ubuntu'),
  defaultFont(null);

  const Font([this.description = null]);
  final String? description;
}
