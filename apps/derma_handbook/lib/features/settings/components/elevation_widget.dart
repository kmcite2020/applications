import 'package:derma_handbook/main.dart';

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
