import 'package:flutter/material.dart';

import '../globals.dart';
import '../utils.dart';
import 'settings.dart';

ThemeData lightThemeData(ref) {
  final settingsModel = ref.read(settingsProvider);

  return ThemeData(
    listTileTheme: ListTileThemeData(
      tileColor: settingsModel.materialColor.shade200,
      selectedTileColor: settingsModel.materialColor.shade400.withAlpha(200),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
    ),
    cardTheme: CardTheme(
      color: settingsModel.materialColor.shade200,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
      // margin: EdgeInsets.all(padding),
    ),
    // backgroundColor: Colors.blue,
    // bottomAppBarColor: Colors.blue,
    // cardColor: Colors.blue,
    // colorScheme: Colors.blue,
    // dialogBackgroundColor: Colors.blue,
    // disabledColor: Colors.blue,
    // dividerColor: Colors.blue,
    // errorColor: Colors.blue,
    // highlightColor: Colors.blue,
    scaffoldBackgroundColor: settingsModel.materialColor.shade100,
    timePickerTheme: TimePickerThemeData(
      backgroundColor: settingsModel.materialColor.shade200,
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
    ),
    canvasColor: settingsModel.materialColor.shade200,
    focusColor: settingsModel.materialColor.shade400,
    hintColor: settingsModel.materialColor,
    hoverColor: settingsModel.materialColor.shade400,
    indicatorColor: settingsModel.materialColor,
    // primaryColor: color,
    primaryColorDark: settingsModel.materialColor.shade800,
    primaryColorLight: settingsModel.materialColor.shade200,
    // primarySwatch: Colors.blue,
    secondaryHeaderColor: settingsModel.materialColor,
    selectedRowColor: settingsModel.materialColor,
    shadowColor: settingsModel.materialColor,
    splashColor: settingsModel.materialColor,
    toggleableActiveColor: settingsModel.materialColor,
    unselectedWidgetColor: settingsModel.materialColor.withAlpha(100),
    dialogTheme: DialogTheme(
      elevation: 10,
      backgroundColor: settingsModel.materialColor.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsModel.borderRadius)),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: settingsModel.materialColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          settingsModel.borderRadius,
        ),
      ),
    ),
    appBarTheme:
        AppBarTheme(backgroundColor: settingsModel.materialColor.shade100, elevation: 10, toolbarHeight: settingsModel.appBarHeight),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: settingsModel.materialColor.shade900,
        foregroundColor: settingsModel.materialColor.shade100,
        minimumSize: const Size(100, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsModel.borderRadius,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(100, 40),
        backgroundColor: settingsModel.materialColor.shade700,
        foregroundColor: settingsModel.materialColor.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsModel.borderRadius,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: settingsModel.materialColor.shade800,
        minimumSize: const Size(100, 40),
        foregroundColor: settingsModel.materialColor.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsModel.borderRadius,
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: EdgeInsets.all(18),
      filled: true,
      fillColor: settingsModel.materialColor.shade200,
      hoverColor: settingsModel.materialColor.shade600,
      focusColor: settingsModel.materialColor.shade900,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(settingsModel.borderRadius),
      ),
    ),
    colorSchemeSeed: settingsModel.materialColor,

    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: getGoogleFont(settingsModel.font),
  );
}
