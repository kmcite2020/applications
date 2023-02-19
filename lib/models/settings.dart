// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'enums.dart';

class SettingsModel {
  final ThemeMode themeMode;
  final String font;
  final MaterialColor materialColor;
  final double padding;
  final double borderRadius;
  final AvailableApps? currentApp;
  SettingsModel({
    required this.themeMode,
    required this.font,
    required this.materialColor,
    required this.padding,
    required this.borderRadius,
    this.currentApp,
  });

  double get appBarHeight {
    if (padding <= 10) {
      return 60;
    } else if (padding <= 15 && padding > 10) {
      return padding * 6;
    } else {
      return 90;
    }
  }

// Widget get home => currentApp == null? DashboardApp() : ;

  Widget? currentAppWidget() {
    switch (currentApp!) {
      case AvailableApps.todo:
        // TODO: Handle this case.
        break;
      case AvailableApps.weather:
        // TODO: Handle this case.
        break;
      case AvailableApps.recipe:
        // TODO: Handle this case.
        break;
      case AvailableApps.calculator:
        // TODO: Handle this case.
        break;
      case AvailableApps.quiz:
        // TODO: Handle this case.
        break;
      case AvailableApps.budget:
        // TODO: Handle this case.
        break;
      case AvailableApps.chat:
        // TODO: Handle this case.
        break;
      case AvailableApps.musicPlayer:
        // TODO: Handle this case.
        break;
      case AvailableApps.flashcard:
        // TODO: Handle this case.
        break;
      case AvailableApps.news:
        // TODO: Handle this case.
        break;
    }
    return null;
  }
}
