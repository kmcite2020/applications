import 'dart:async';

import 'package:batteries/batteries/pages/products_page.dart';
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
        2.seconds,
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
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          home: const BatteriesStorePage(),
        );
      },
    );
  }
}
