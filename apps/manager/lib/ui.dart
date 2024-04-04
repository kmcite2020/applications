part of 'manager.dart';

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
// typedef TopUI = TopStatelessWidget;

abstract class TopUI extends TopStatelessWidget {
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
        ...dependencies,
      ];

  @override
  Widget? splashScreen() => splashUI;

  @override
  Widget? errorScreen(error, void Function() refresh) =>
      errorUI(error, refresh);

  @override
  void didMountWidget() {
    initApp();
  }

  @override
  void didUnmountWidget() => disposeApp();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }

  Widget buildApp(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => buildApp(context),
      sideEffects: SideEffects(
        initState: () => FlutterNativeSplash.remove(),
      ),
    );
  }
}
