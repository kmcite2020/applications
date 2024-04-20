import '../main.dart';

class App extends TopUI {
  @override
  homePage(context) => DashboardPage();

  @override
  ThemeData get theme => FlexThemeData.light(
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
  @override
  ThemeData get darkTheme => FlexThemeData.dark(
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
  @override
  ThemeMode get themeMode => settingsRM().themeMode;
}

// ThemeData _theme() {
//   return FlexThemeData.light(
//     fontFamily: fontFamily(settingsRM().font),
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: settingsRM().materialColor,
//     ),
//     useMaterial3: settingsRM().useMaterial3,
//     appBarStyle: FlexAppBarStyle.primary,
//     subThemesData: FlexSubThemesData(
//       defaultRadius: settingsRM().borderRadius,
//     ),
//     lightIsWhite: true,
//   ).copyWith(
//     listTileTheme: ListTileThemeData(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(settingsRM().borderRadius),
//       ),
//     ),
//   );
// }

// ThemeData _darkTheme() => FlexThemeData.dark(
//       fontFamily: fontFamily(settingsRM().font),
//       colorScheme: ColorScheme.fromSwatch(
//         primarySwatch: settingsRM().materialColor,
//         brightness: Brightness.dark,
//       ),
//       useMaterial3: settingsRM().useMaterial3,
//       appBarStyle: FlexAppBarStyle.primary,
//       subThemesData: FlexSubThemesData(
//         defaultRadius: settingsRM().borderRadius,
//       ),
//       darkIsTrueBlack: true,
//     );
