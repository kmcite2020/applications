import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings.dart';

class BorderRadiusWidget extends ReactiveStatelessWidget {
  const BorderRadiusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: settingsManager.onBorderRadiusChanged,
      value: settingsManager.settings.borderRadius,
      min: 0,
      max: 35,
    ).pad();
  }
}
