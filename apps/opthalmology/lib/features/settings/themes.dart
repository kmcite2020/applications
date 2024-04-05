import 'package:opthalmology/features/settings/settings.dart';

import '../../main.dart';

final themes = Themes();

class Themes {
  ThemeData theme() => FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
        ),
        subThemesData: const FlexSubThemesData(defaultRadius: 20),
        appBarStyle: FlexAppBarStyle.primary,
        lightIsWhite: true,
        useMaterial3: true,
      ).copyWith(
        switchTheme: SwitchThemeData(
          thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
          thumbColor: MaterialStatePropertyAll(
            settingsManager.settings.materialColor.shade200,
          ),
        ),
      );
  ThemeData darkTheme() => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: const FlexSubThemesData(defaultRadius: 20),
        appBarStyle: FlexAppBarStyle.primary,
        darkIsTrueBlack: true,
        useMaterial3: true,
      ).copyWith(
        switchTheme: SwitchThemeData(
          thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
          thumbColor: MaterialStatePropertyAll(
            settingsManager.settings.materialColor.shade200,
          ),
        ),
      );
  ThemeMode themeMode() => settingsManager.settings.themeMode;
}
