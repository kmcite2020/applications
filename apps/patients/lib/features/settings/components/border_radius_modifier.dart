import '../../../main.dart';

class BorderRadiusModifier extends UI {
  const BorderRadiusModifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Border Radius'.text(textScaleFactor: 1.5).pad(),
        Slider(
          min: 0,
          max: 35,
          value: settingsManager.settings.borderRadius,
          onChanged: settingsManager.setBorderRadius,
          label: settingsManager.settings.borderRadius.toStringAsFixed(0),
          allowedInteraction: SliderInteraction.slideOnly,
        ),
      ],
    ).borderizeGradiently();
  }
}
