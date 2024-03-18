import '../main.dart';
import 'study_timer/study_timer.dart';

class App extends TopUI {
  const App({super.key});
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();
  @override
  List<FutureOr<void>>? ensureInitialization() => [
        isarRM.initializeState(),
      ];

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: themes.theme(),
        darkTheme: themes.darkTheme(),
        themeMode: themes.themeMode(),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
      ),
    );
  }
}
