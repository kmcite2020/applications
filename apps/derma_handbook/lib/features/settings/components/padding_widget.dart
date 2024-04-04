import 'package:derma_handbook/main.dart';

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
