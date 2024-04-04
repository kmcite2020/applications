import 'package:batteries/batteries/pages/batteries_stock_page.dart';
import 'package:batteries/main.dart';

class App extends TopUI {
  @override
  Widget? splashScreen() => CircleAvatar(
        child: CircularProgressIndicator().pad(),
      ).pad().center();

  @override
  final dependencies = [
    Future.delayed(
      336.milliseconds,
      () => RM.storageInitializer(
        HiveStorage(),
      ),
    )
  ];

  @override
  Widget buildApp(BuildContext context) {
    return OnReactive(
      sideEffects: SideEffects(
        initState: () => FlutterNativeSplash.remove(),
      ),
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: RM.navigate.navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
        ),
        home: const BatteriesStockPage(),
      ),
    );
  }
}
