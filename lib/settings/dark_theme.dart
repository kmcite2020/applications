// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../globals.dart';
import '../utils.dart';
import 'settings.dart';

ThemeData darkThemeData(WidgetRef ref) {
  final settingsModel = ref.read(settingsProvider);

  return ThemeData(
    backgroundColor: settingsModel.materialColor,
    bottomAppBarColor: settingsModel.materialColor,
    cardColor: settingsModel.materialColor,
    disabledColor: settingsModel.materialColor,
    dividerColor: settingsModel.materialColor,
    errorColor: settingsModel.materialColor,
    highlightColor: settingsModel.materialColor,
    scaffoldBackgroundColor: settingsModel.materialColor.shade800,
    canvasColor: settingsModel.materialColor.shade900,
    focusColor: settingsModel.materialColor.shade400,
    hintColor: settingsModel.materialColor,
    hoverColor: settingsModel.materialColor,
    indicatorColor: settingsModel.materialColor,
    primaryColorDark: settingsModel.materialColor.shade800,
    primaryColorLight: settingsModel.materialColor.shade200,
    colorSchemeSeed: settingsModel.materialColor,
    secondaryHeaderColor: settingsModel.materialColor,
    selectedRowColor: settingsModel.materialColor,
    shadowColor: settingsModel.materialColor,
    splashColor: settingsModel.materialColor,
    toggleableActiveColor: settingsModel.materialColor,
    unselectedWidgetColor: settingsModel.materialColor.withAlpha(100),
    dialogTheme: DialogTheme(backgroundColor: settingsModel.materialColor.shade700),
    popupMenuTheme: PopupMenuThemeData(
      color: settingsModel.materialColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius)),
    ),
    appBarTheme:
        AppBarTheme(backgroundColor: settingsModel.materialColor.shade900, elevation: 10, toolbarHeight: settingsModel.appBarHeight),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        minimumSize: const Size(100, 40),
        backgroundColor: settingsModel.materialColor.shade300,
        foregroundColor: settingsModel.materialColor.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsModel.borderRadius),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settingsModel.materialColor.shade600,
          foregroundColor: settingsModel.materialColor.shade900,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius))),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settingsModel.materialColor.shade800,
          foregroundColor: settingsModel.materialColor.shade200,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: settingsModel.materialColor.shade800,
      hoverColor: settingsModel.materialColor.shade900,
      focusColor: settingsModel.materialColor.shade600,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius)),
    ),
    cardTheme: CardTheme(
      color: settingsModel.materialColor.shade900,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
      margin: EdgeInsets.all(settingsModel.padding),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: settingsModel.materialColor.shade900,
      selectedTileColor: settingsModel.materialColor.shade600,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius)),
    ),
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: getGoogleFont(settingsModel.font),
  );
}
