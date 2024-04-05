import 'package:manager/manager.dart';

abstract class Page extends UI {
  const Page({super.key});

  PreferredSizeWidget? appBar() => null;
  Widget? body() => null;
  Drawer? drawer() => null;
  Drawer? endDrawer() => null;
  Widget? floatingActionButton() => null;
  Widget? navigationBar() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: endDrawer(),
      drawer: drawer(),
      appBar: appBar(),
      body: body(),
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: navigationBar(),
    );
  }
}

typedef UI = ReactiveStatelessWidget;

abstract class TopUI extends TopStatelessWidget {
  const TopUI();
  void initApp() {}
  void disposeApp() {}
  List<FutureOr<void>> get dependencies => [];
  Widget get splashUI => CircularProgressIndicator().center();
  Widget errorUI(error, void Function() refresh) => error.toString().text();

  @override
  List<FutureOr<void>> ensureInitialization() => [
        SynchronousFuture(
          FlutterNativeSplash.preserve(
            widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
          ),
        ),
        RM.storageInitializer(HiveStorage()),
        ...dependencies,
      ];

  @override
  Widget? splashScreen() => splashUI;

  @override
  Widget? errorScreen(error, void Function() refresh) =>
      errorUI(error, refresh);

  @override
  void didMountWidget() => initApp();

  @override
  void didUnmountWidget() => disposeApp();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) =>
      super.didChangeAppLifecycleState(state);

  Widget homePage(
    BuildContext context,
  );

  ColorScheme get lightScheme => ColorScheme.light();
  ColorScheme get darkScheme => ColorScheme.dark();
  ThemeMode get themeMode;

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
            theme: ThemeData(colorScheme: lightDynamic ?? lightScheme),
            darkTheme: ThemeData(colorScheme: darkDynamic ?? darkScheme),
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
