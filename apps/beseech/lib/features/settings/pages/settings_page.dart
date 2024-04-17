import 'package:beseech/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingBackButton(),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SETTINGS'),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 3),
          const ThemeModeUI(),
          Slider(
            // name: 'Border Radius',
            value: settingsRM.state.borderRadius,
            onChanged: (_) => settingsRM(SettingsEvent.borderRadius(_)),
            min: 0,
            max: 30,
          ).pad(),
          Slider(
            // name: 'Padding',
            value: settingsRM.state.padding,
            onChanged: (_) => settingsRM(SettingsEvent.padding(_)),
            min: 4,
            max: 10,
          ).pad(),
          const MaterialColorsUI(),
          ElevatedButton(
            onPressed: onboarding == Onboarding()
                ? null
                : () => onboarding = Onboarding(),
            child: 'RESET SETTINGS'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
