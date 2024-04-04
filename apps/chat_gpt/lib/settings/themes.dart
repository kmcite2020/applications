import 'package:flutter/material.dart';

class Themes {
  static ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.green,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      brightness: Brightness.dark,
    );
  }
}
