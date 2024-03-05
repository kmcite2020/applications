import 'package:batteries/batteries/pages/products_page.dart';
import 'package:batteries/main.dart';

class App extends UI {
  const App({super.key});

  @override
  void didMountWidget(BuildContext context) {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: RM.navigate.navigatorKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const BatteriesStorePage(),
    );
  }
}
