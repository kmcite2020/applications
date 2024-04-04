import '../../main.dart';

ThemeData get theme {
  return FlexThemeData.light(
    fontFamily: GoogleFonts.getFont(font == '' ? 'Dosis' : font).fontFamily,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: materialColor),
    useMaterial3: true,
    appBarStyle: FlexAppBarStyle.primary,
    lightIsWhite: true,
    subThemesData: FlexSubThemesData(
      buttonMinSize: Size(double.maxFinite, 50),
      defaultRadius: borderRadius,
    ),
    tooltipsMatchBackground: true,
  );
}

ThemeData get darkTheme {
  return FlexThemeData.dark(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: materialColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    darkIsTrueBlack: true,
    fontFamily: GoogleFonts.getFont(font == '' ? 'Dosis' : font).fontFamily,
    appBarStyle: FlexAppBarStyle.primary,
    subThemesData: FlexSubThemesData(
      defaultRadius: borderRadius,
      buttonMinSize: Size(double.maxFinite, 50),
      useFlutterDefaults: true,
    ),
    tooltipsMatchBackground: true,
  );
}

get okColor => materialColor[700];
get errorColor => materialColor[300];

Size get buttonSize => const Size(65, 65);
double get appBarHeight => 80;
List<MaterialColor> get colors => Colors.primaries;
List<ThemeMode> get themeModes => ThemeMode.values;
List<String> get fonts {
  return [
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}
