import '../../main.dart';

ThemeData theme() {
  return FlexThemeData.light(
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: settingsRM().materialColor),
    fontFamily: GoogleFonts.getFont('Dosis').fontFamily!,
    useMaterial3: true,
    lightIsWhite: true,
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsRM().borderRadius,
      cardElevation: kCardElevation,
      cardRadius: settingsRM().borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
  );
}

ThemeData darkTheme() {
  return FlexThemeData.dark(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: settingsRM().materialColor,
      brightness: Brightness.dark,
    ),
    fontFamily: GoogleFonts.getFont('Dosis').fontFamily ?? 'Lotion',
    useMaterial3: true,
    darkIsTrueBlack: true,
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsRM().borderRadius,
      cardElevation: kCardElevation,
      cardRadius: settingsRM().borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
  );
}

const kCardElevation = 4.0;
