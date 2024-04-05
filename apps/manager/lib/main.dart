import 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends UI {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (light, dark) {
        return MaterialApp(
          navigatorKey: RM.navigate.navigatorKey,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          darkTheme: ThemeData(colorScheme: dark),
          home: Homepage(),
          theme: ThemeData(colorScheme: light),
        );
      },
    );
  }
}

class Homepage extends Page {}
