import 'package:flutter/material.dart';

import '../settings/settings.dart';

extension ObjectExtensions on Object? {
  Widget text([double? textScaleFactor]) {
    return Text(
      toString(),
      // ignore: deprecated_member_use
      textScaleFactor:
          textScaleFactor ?? settingsManager.settings.textScaleFactor,
    );
  }

  // ignore: avoid_print
  void log() => print(this);
}

extension WidgetExtensions on Widget {
  Widget pad([double? padding]) {
    return Padding(
      padding: EdgeInsets.all(padding ?? settingsManager.settings.padding),
      child: this,
    );
  }

  Widget center() => Center(
        child: this,
      );
  Widget borderize([double? borderWidth]) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: settingsManager.settings.materialColor,
          width: borderWidth ?? 1,
        ),
        borderRadius:
            BorderRadius.circular(settingsManager.settings.borderRadius),
      ),
      child: this,
    );
  }
}
