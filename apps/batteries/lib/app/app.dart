import 'package:batteries/batteries/pages/batteries_stock_page.dart';
import 'package:batteries/main.dart';

class App extends TopUI {
  const App({super.key});

  @override
  Widget? splashScreen() => CircleAvatar(
        child: CircularProgressIndicator().pad(),
      ).pad().center();

  @override
  List<FutureOr<void>>? ensureInitialization() {
    return [
      Future.value(
        () => FlutterNativeSplash.preserve(
          widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
        ),
      ),
      Future.delayed(
        336.milliseconds,
        () => RM.storageInitializer(
          HiveStorage(),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      sideEffects: SideEffects(
        initState: () {
          FlutterNativeSplash.remove();
        },
      ),
      () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: RM.navigate.navigatorKey,
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            useMaterial3: true,
          ),
          home: const BatteriesStockPage(),
        );
      },
    );
  }
}
