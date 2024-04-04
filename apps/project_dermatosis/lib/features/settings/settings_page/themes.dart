import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'settings.dart';

final Themes themes = Themes();

class Themes {
  ThemeData get theme {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
      ),
      lightIsWhite: settingsManager.settings.trueThemeMode,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
        filledButtonRadius: settingsManager.settings.borderRadius,
        buttonMinSize: buttonMinSize,
      ),
      useMaterial3: useMaterial3,
      appBarStyle: FlexAppBarStyle.surface,
    ).copyWith(
      switchTheme: SwitchThemeData(
        trackOutlineColor: MaterialStatePropertyAll(
          settingsManager.settings.materialColor,
        ),
        thumbColor: MaterialStatePropertyAll(
          settingsManager.settings.materialColor,
        ),
        thumbIcon: const MaterialStatePropertyAll(
          Icon(Icons.bubble_chart),
        ),
      ),
    );
  }

  ThemeData get darkTheme {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
        brightness: Brightness.dark,
      ),
      darkIsTrueBlack: settingsManager.settings.trueThemeMode,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
        filledButtonRadius: settingsManager.settings.borderRadius,
        appBarCenterTitle: true,
        buttonMinSize: buttonMinSize,
        switchSchemeColor: SchemeColor.background,
      ),
      appBarStyle: FlexAppBarStyle.primary,
      useMaterial3: useMaterial3,
    ).copyWith(
      switchTheme: SwitchThemeData(
        trackOutlineColor: MaterialStatePropertyAll(
          settingsManager.settings.materialColor,
        ),
        thumbColor: MaterialStatePropertyAll(
          settingsManager.settings.materialColor,
        ),
        thumbIcon: MaterialStatePropertyAll(
          Icon(Icons.bubble_chart),
        ),
      ),
    );
  }

  ThemeMode get themeMode => settingsManager.settings.themeMode;

  static const useMaterial3 = true;
  static const buttonMinSize = Size.fromHeight(60);
}
