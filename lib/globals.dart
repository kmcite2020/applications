import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'themes/themes.dart';

final _themeMode = RM.inject<ThemeMode>(
  () => ThemeMode.system,
  persist: () => PersistState(
    key: "themeMode",
    toJson: (s) => jsonEncode(themeModes.indexOf(s)),
    fromJson: (json) => themeModes[jsonDecode(json)],
  ),
);

final _color = RM.inject<MaterialColor>(
  () => Colors.blue,
  persist: () => PersistState(
    key: "color",
    toJson: (s) => jsonEncode(colors.indexOf(s)),
    fromJson: (json) => colors[jsonDecode(json)],
  ),
);

final _font = RM.inject<String>(
  () => fonts.first,
  persist: () => PersistState(key: "font"),
);

final _padding = RM.inject<double>(
  () => 10,
  persist: () => PersistState(key: "padding"),
);

final _borderRadius = RM.inject<double>(
  () => 10,
  persist: () => PersistState(key: "borderRadius"),
);

ThemeMode get themeMode => _themeMode.state;
set themeMode(value) => _themeMode.state = value;
List<ThemeMode> get themeModes => ThemeMode.values;

MaterialColor get color => _color.state;
set color(value) => _color.state = value;
List<MaterialColor> get colors => Colors.primaries;

String get font => _font.state;

set font(value) => _font.state = value;

List<String> get fonts {
  return [
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

// String googleFont(String font) {}

double get borderRadius => _borderRadius.state;
set borderRadius(value) => _borderRadius.state = value;
double get padding => _padding.state;
set padding(value) => _padding.state = value;

/// UTILS
String getGoogleFont(x) {
  return GoogleFonts.getFont(x).fontFamily!;
}

String get randomID => Uuid().v1();

List<Widget> themingWidgets(size) {
  return [
    // UserInformations(), // TODO - create a dedicated user information widget for currently authnticated user
    ThemeModeChanger(),
    ColorChanger(size),
    FontChanger(),
    BorderRadiusChanger(),
    PaddingChanger(),
  ];
}

double get appBarHeight {
  if (padding <= 10) {
    return 60;
  } else if (padding <= 15 && padding > 10) {
    return padding * 6;
  } else {
    return 90;
  }
}
