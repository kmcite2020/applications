import 'package:flutter/material.dart';

import '../features/settings/personalizations/personalizations_bloc.dart';

ThemeData get _theme => ThemeData(
      scaffoldBackgroundColor: Themes.color[200],
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Themes.color[200],
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Themes.color[800],
            foregroundColor: Themes.color[200],
            disabledBackgroundColor: Themes.color[900],
            disabledForegroundColor: Themes.color[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Themes.borderRadius),
            ),
            minimumSize: Themes.minimumSize,
            elevation: Themes.buttonElevation),
      ),
      useMaterial3: true,
    );
ThemeData get _darkTheme => ThemeData(
      scaffoldBackgroundColor: Themes.color[800],
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Themes.color[800],
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Themes.color[200],
          foregroundColor: Themes.color[800],
          disabledBackgroundColor: Themes.color[100],
          disabledForegroundColor: Themes.color[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Themes.borderRadius),
          ),
          minimumSize: Themes.minimumSize,
          elevation: Themes.buttonElevation,
        ),
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
    );

class Themes {
  static MaterialColor get color => personalizationsBloc.color;
  static Size get minimumSize => const Size.fromHeight(60);
  static double get buttonElevation => 8;
  static double get borderRadius => 8;
  static ThemeData get theme => _theme;
  static ThemeData get darkTheme => _darkTheme;
}
