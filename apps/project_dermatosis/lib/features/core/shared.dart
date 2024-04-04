import 'package:flutter/material.dart';
import 'package:project_dermatosis/features/settings/settings_page/settings.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

extension WidgetExtensions on Widget {
  Widget pad([double? padding]) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: this,
    );
  }
}

extension ObjectExtensions on Object? {
  Widget text([double? textScaleFactor]) {
    return Text(
      formatObject,
      textScaleFactor:
          textScaleFactor ?? settingsManager.settings.textScaleFactor,
    );
  }

  String get formatObject {
    if (this == null) {
      return 'Empty - Null';
    }
    if (toString().isEmpty) {
      return 'Empty';
    }
    return toString();
  }
}

extension DurationExtensions on Duration {
  String get formatDuration {
    if ((inDays / 30) > 12) {
      return '${(inDays / 30 / 12).ceil()} years';
    } else if (inDays >= 100) {
      return '${(inDays / 30).ceil()} months';
    } else if (inDays >= 30 && inDays <= 100) {
      return '$inDays days';
    } else if (inHours >= 24) {
      return '$inHours hours';
    } else if (inMinutes >= 60) {
      return '$inMinutes minutes';
    } else {
      return '$inSeconds seconds';
    }
  }
}

// ignore: prefer_const_constructors
String get randomID => Uuid().v4();
BuildContext get context => RM.context!;
MediaQueryData get mediaQuery => MediaQuery.of(context);
