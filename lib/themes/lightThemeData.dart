// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';

import '../reactiveModels.dart';

ThemeData get lightThemeData => ThemeData(
      listTileTheme: ListTileThemeData(
        tileColor: color.shade200,
        selectedTileColor: color.shade400.withAlpha(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: color.shade200,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: EdgeInsets.all(padding),
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
      scaffoldBackgroundColor: color.shade100,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: color.shade200,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      canvasColor: color.shade200,
      focusColor: color.shade400,
      hintColor: color,
      hoverColor: color.shade400,
      indicatorColor: color,
      // primaryColor: color,
      primaryColorDark: color.shade800,
      primaryColorLight: color.shade200,
      // primarySwatch: Colors.blue,
      secondaryHeaderColor: color,
      selectedRowColor: color,
      shadowColor: color,
      splashColor: color,
      toggleableActiveColor: color,
      unselectedWidgetColor: color.withAlpha(100),
      dialogTheme: DialogTheme(
        elevation: 10,
        backgroundColor: color.shade200,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: color.shade100,
          elevation: 10,
          toolbarHeight: appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: color.shade900,
          foregroundColor: color.shade100,
          minimumSize: const Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: color.shade700,
          foregroundColor: color.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: color.shade800,
          minimumSize: const Size(100, 40),
          foregroundColor: color.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.all(18),
        filled: true,
        fillColor: color.shade200,
        hoverColor: color.shade600,
        focusColor: color.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      colorSchemeSeed: color,

      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: getGoogleFont(font),
    );
