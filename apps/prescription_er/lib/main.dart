import 'main.dart';
export 'package:manager/manager.dart';
export 'package:prescription_er/patients_list.dart';

void main() async {
  runApplication(App());
}

class App extends UI {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      debugShowCheckedModeBanner: false,
      themeMode: themeModeRM(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      darkTheme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        brightness: Brightness.dark,
      ),
      home: PatientsListPage(),
    );
  }
}

final themeModeRM = ThemeMode.system.alive(
  (rms) => rms.debounce(
    800.milliseconds,
    (_) {
      print(_);
    },
  ),
);
