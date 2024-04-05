import 'package:beseech/main.dart';

class BorderRadiusUI extends UI {
  const BorderRadiusUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Border Radius'.text().pad(),
        Slider(
          value: settingsRM.state.borderRadius,
          onChanged: (_) => settingsRM.add(SettingsEvent.borderRadius(_)),
        ).pad(),
      ],
    ).card();
  }
}
