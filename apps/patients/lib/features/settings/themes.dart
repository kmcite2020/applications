import '../../main.dart';

final themes = Themes();

class Themes {
  static const cardElevation = 4.0;

  ThemeData theme() {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
      ),
      fontFamily: 'Cascadia Code',
      useMaterial3: true,
      lightIsWhite: true,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
        cardElevation: cardElevation,
        cardRadius: settingsManager.settings.borderRadius,
      ),
      appBarStyle: FlexAppBarStyle.primary,
    ).copyWith(
      switchTheme: _switchThemeData(),
    );
  }

  SwitchThemeData _switchThemeData() {
    return SwitchThemeData(
      thumbIcon: MaterialStateProperty.resolveWith(
        (x) {
          if (x.contains(MaterialState.selected)) {
            return const Icon(Icons.done_all);
          }
          return const Icon(Icons.color_lens);
        },
      ),
      trackOutlineColor:
          MaterialStateProperty.all(settingsManager.settings.materialColor),
      trackOutlineWidth: const MaterialStatePropertyAll(4),
      thumbColor: MaterialStatePropertyAll(
        settingsManager.settings.materialColor.shade900,
      ),
      trackColor: MaterialStatePropertyAll(
        settingsManager.settings.materialColor.withOpacity(.1),
      ),
    );
  }

  ThemeData darkTheme() {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
        brightness: Brightness.dark,
      ),
      fontFamily: 'Cascadia Code',
      useMaterial3: true,
      darkIsTrueBlack: true,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
        cardElevation: cardElevation,
        cardRadius: settingsManager.settings.borderRadius,
      ),
      appBarStyle: FlexAppBarStyle.primary,
    ).copyWith(
      switchTheme: _switchThemeData(),
    );
  }
}
