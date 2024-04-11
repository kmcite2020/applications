import 'main.dart';

export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:manager/manager.dart';
export 'package:notes/notes/notes_page.dart';
export 'package:notes/settings/settings.dart';
export 'package:notes/notes/note_page.dart';
export 'package:notes/notes/notes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends TopUI {
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();
  @override
  ThemeData get theme => FlexThemeData.light(
        useMaterial3: false,
        lightIsWhite: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      );

  @override
  ThemeData get darkTheme => FlexThemeData.dark(
        useMaterial3: false,
        darkIsTrueBlack: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      );

  @override
  ThemeMode get themeMode => settings.themeMode;
  @override
  Widget homePage(BuildContext context) {
    return NotesPage();
  }
}
