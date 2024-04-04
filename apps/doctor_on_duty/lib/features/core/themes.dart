part of 'core.dart';

final themes = Themes();

class Themes {
  ThemeData theme() {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsBloc.settings.materialColor,
      ),
      subThemesData: FlexSubThemesData(
        defaultRadius: 5,
      ),
      fontFamily: fontFamily,
      appBarStyle: FlexAppBarStyle.primary,
      useMaterial3: true,
      lightIsWhite: true,
    );
  }

  ThemeData darkTheme() {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsBloc.settings.materialColor,
        brightness: Brightness.dark,
      ),
      subThemesData: FlexSubThemesData(
        defaultRadius: 5,
      ),
      fontFamily: fontFamily,
      appBarStyle: FlexAppBarStyle.primary,
      useMaterial3: true,
      darkIsTrueBlack: true,
    );
  }
}
