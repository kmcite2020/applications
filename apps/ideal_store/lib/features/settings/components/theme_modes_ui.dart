import '../../../main.dart';

class ThemeModesUI extends UI {
  const ThemeModesUI({super.key});
  bool isThemeModeSelected(ThemeMode eachMode) => themeMode == eachMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Modes'.text(textScaleFactor: 4).pad(),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          physics: const BouncingScrollPhysics(),
          children: [
            () {
              const eachMode = ThemeMode.dark;
              return ElevatedButton(
                onPressed: isThemeModeSelected(eachMode)
                    ? null
                    : () {
                        themeMode = eachMode;
                      },
                child: const Icon(
                  Icons.dark_mode,
                  size: 80,
                ),
              ).pad();
            }(),
            () {
              const eachMode = ThemeMode.light;
              return ElevatedButton(
                onPressed: isThemeModeSelected(eachMode)
                    ? null
                    : () {
                        themeMode = eachMode;
                      },
                child: const Icon(Icons.light_mode, size: 80),
              ).pad();
            }(),
          ],
        ).pad()
      ],
    );
  }
}
