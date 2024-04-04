import 'package:derma_handbook/main.dart';
import 'package:derma_handbook/features/settings/settings.dart';

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
