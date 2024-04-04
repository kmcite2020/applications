import 'main.dart';

export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:manager/manager.dart';
export 'package:notes/drawer/drawer.dart';
export 'package:notes/notes/notes_page.dart';
export 'package:notes/settings/settings.dart';
export 'package:notes/notes/note_page/note_page.dart';
export 'package:notes/notes/notes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends TopUI {
  @override
  final dependencies = [
    RM.storageInitializer(HiveStorage()),
  ];

  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  @override
  Widget buildApp(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        lightIsWhite: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        darkIsTrueBlack: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      ),
      themeMode: settings.themeMode,
      home: switch (navigation) {
        0 => const NotesPage(),
        _ => const SettingsPage(),
      },
    );
  }
}
