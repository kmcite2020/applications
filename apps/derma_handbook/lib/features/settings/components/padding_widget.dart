import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings.dart';

class PaddingWidget extends ReactiveStatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: settingsManager.padding,
      value: settingsManager.settings.padding,
      min: 4,
      max: 14,
    ).pad();
  }
}
