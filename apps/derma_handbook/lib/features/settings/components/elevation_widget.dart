import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings.dart';

class ElevationWidget extends ReactiveStatelessWidget {
  const ElevationWidget({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Slider(
      onChanged: settingsManager.elevation,
      value: settingsManager.settings.elevation,
      min: 0,
      max: 50,
    ).pad();
  }
}
