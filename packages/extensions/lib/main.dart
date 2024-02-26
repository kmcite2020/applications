import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

extension DynamicExtensions on dynamic {
  Widget text({double? textScaleFactor}) => Text(
        toString(),
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );

  bool get isNull => this == null;
  bool get isNotNull => !isNull;
}

extension WidgetExtensions on Widget {
  Widget pad() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget center() => Center(child: this);
}

String get randomID => const Uuid().v4();
