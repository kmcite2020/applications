// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../reactiveModels.dart';

ThemeData get darkThemeData => ThemeData(
      backgroundColor: color,
      bottomAppBarColor: color,
      cardColor: color,
      disabledColor: color,
      dividerColor: color,
      errorColor: color,
      highlightColor: color,
      scaffoldBackgroundColor: color.shade800,
      canvasColor: color.shade900,
      focusColor: color.shade400,
      hintColor: color,
      hoverColor: color,
      indicatorColor: color,
      primaryColorDark: color.shade800,
      primaryColorLight: color.shade200,
      colorSchemeSeed: color,
      secondaryHeaderColor: color,
      selectedRowColor: color,
      shadowColor: color,
      splashColor: color,
      toggleableActiveColor: color,
      unselectedWidgetColor: color.withAlpha(100),
      dialogTheme: DialogTheme(backgroundColor: color.shade700),
      popupMenuTheme: PopupMenuThemeData(
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: color.shade900,
          elevation: 10,
          toolbarHeight: appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: color.shade300,
          foregroundColor: color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: color.shade600,
            foregroundColor: color.shade900,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: color.shade800,
            foregroundColor: color.shade200,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: color.shade800,
        hoverColor: color.shade900,
        focusColor: color.shade600,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      cardTheme: CardTheme(
        color: color.shade900,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: EdgeInsets.all(padding),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: color.shade900,
        selectedTileColor: color.shade600,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: getGoogleFont(font),
    );
