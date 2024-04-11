part of 'manager.dart';

/// UI
abstract class TopUI extends TopStatelessWidget {
  ThemeData get theme => ThemeData.light();
  ThemeData get darkTheme => ThemeData.dark();
  ThemeMode get themeMode => ThemeMode.system;
  Widget? homePage(BuildContext context) => null;
  @override
  List<FutureOr<void>>? ensureInitialization() => [_StorageOpener()];
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => MaterialApp(
        navigatorKey: navigator.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: homePage(context) ??
            Scaffold(
              body: 'override homePage()'.text().center(),
            ),
      ),
    );
  }
}

abstract class UI extends ReactiveStatelessWidget {}

/// NAVIGATION
final navigator = RM.navigate;
final back = navigator.back;
final to = navigator.to;

/// PERSISTENCE and STORAGE
late final Box storage;

Future<void> _StorageOpener() async {
  final info = await PackageInfo.fromPlatform();
  await Hive.initFlutter();
  storage = await Hive.openBox(info.appName);
}
