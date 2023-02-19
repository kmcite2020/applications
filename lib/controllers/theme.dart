import 'package:apps/controllers/settings.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

ThemeData themeData(bool dark) {
  final settingsModel = Settings() as dynamic;
  if (dark) {
    return ThemeData(
      cardColor: settingsModel.materialColor,
      disabledColor: settingsModel.materialColor,
      dividerColor: settingsModel.materialColor,
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
      shadowColor: settingsModel.materialColor,
      splashColor: settingsModel.materialColor,
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
      // colorScheme: ColorScheme(error: settingsModel.materialColor),
      // colorScheme: ColorScheme(background: settingsModel.materialColor),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: settingsModel.materialColor),
    );
  } else {
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
      shadowColor: settingsModel.materialColor,
      splashColor: settingsModel.materialColor,
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
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settingsModel.materialColor;
          }
          return null;
        }),
      ),
    );
  }
}
