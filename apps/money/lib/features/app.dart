import '../main.dart';

class App extends TopUI {
  @override
  Widget? homePage(BuildContext context) => DashboardPage();

  @override
  ThemeData get theme => _theme();
  @override
  ThemeData get darkTheme => _darkTheme();
  @override
  ThemeMode get themeMode => settingsRM().themeMode;
}

ThemeData _theme() {
  return FlexThemeData.light(
    fontFamily: fontFamily(settingsRM().font),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: settingsRM().materialColor,
    ),
    useMaterial3: settingsRM().useMaterial3,
    appBarStyle: FlexAppBarStyle.primary,
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsRM().borderRadius,
    ),
    lightIsWhite: true,
  ).copyWith(
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsRM().borderRadius),
      ),
    ),
  );
}

ThemeData _darkTheme() {
  return FlexThemeData.dark(
    fontFamily: fontFamily(settingsRM().font),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: settingsRM().materialColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: settingsRM().useMaterial3,
    appBarStyle: FlexAppBarStyle.primary,
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsRM().borderRadius,
    ),
    darkIsTrueBlack: true,
  );
}
