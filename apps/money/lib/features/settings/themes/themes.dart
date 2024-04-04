import '../../../main.dart';

final themes = Themes();

class Themes {
  ThemeData theme() {
    return FlexThemeData.light(
      fontFamily: fontFamily(font),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: materialColor,
      ),
      useMaterial3: useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: borderRadius,
      ),
      lightIsWhite: true,
    ).copyWith(
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  ThemeData darkTheme() {
    return FlexThemeData.dark(
      fontFamily: fontFamily(font),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: materialColor,
        brightness: Brightness.dark,
      ),
      useMaterial3: useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: borderRadius,
      ),
      darkIsTrueBlack: true,
    );
  }
}
