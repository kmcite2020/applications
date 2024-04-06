import 'package:manager/manager.dart';

abstract class UI extends ReactiveStatelessWidget {
  const UI({super.key});
  void to(Widget page) => navigator.to(page);
}

abstract class TopUI extends TopStatelessWidget {
  const TopUI({super.key});
  @override
  List<FutureOr<void>> ensureInitialization() {
    return [
      SynchronousFuture(
        FlutterNativeSplash.preserve(
          widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
        ),
      ),
      RM.storageInitializer(HiveStorage()),
    ];
  }

  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  Widget homePage(
    BuildContext context,
  );

  ThemeData get theme => ThemeData.light();
  ThemeData get darkTheme => ThemeData.dark();
  ThemeMode get themeMode => ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigator.navigatorKey,
            home: homePage(context),
            themeMode: themeMode,
            theme: lightDynamic == null
                ? theme
                : ThemeData(colorScheme: lightDynamic),
            darkTheme: darkDynamic == null
                ? darkTheme
                : ThemeData(colorScheme: darkDynamic),
          );
        },
      ),
      sideEffects: SideEffects(
        initState: () => FlutterNativeSplash.remove(),
      ),
    );
  }
}

extension BaseExtensions<T> on Base<T> {
  Widget build(
    Widget builder(T state, T Function(T newState) setState),
  ) =>
      builder(
        state,
        (T newState) => state = newState,
      );
}

extension BaseExtensionsBool on Base<bool> {
  void toggle() => state = !state;
}
