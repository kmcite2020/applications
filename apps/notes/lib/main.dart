import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:manager/manager.dart';
import 'package:notes/drawer/drawer.dart';
import 'package:notes/notes/notes_page.dart';
import 'package:notes/settings/settings.dart';

void main() => RM.build(const MyApp());

final themeModeRM = Simple(ThemeMode.system);

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        lightIsWhite: true,
        // subThemesData: FlexSubThemesData(
        //   defaultRadius: settingsRM().borderRadius,
        // ),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        darkIsTrueBlack: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM().borderRadius,
        ),
      ),
      themeMode: settingsRM().themeMode,
      home: switch (navigationRM()) {
        0 => const NotesPage(),
        _ => const SettingsPage(),
      },
    );
  }
}

final summerRM = SummerRM();

class SummerRM extends Complex<int, int> {
  @override
  int get initialState => 0;
  SummerRM() {
    register<int>(
      (event, updater) {
        switch (event) {
          case 0:
            updater(state + 1);
            break;
          default:
            updater(state - 1);
            break;
        }
      },
    );
  }

  @override
  int get undoStackLength => 0;
}
