import 'package:flutter/material.dart';

import '../settings/settings.dart';

extension WidgetExtensions on Widget {
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
