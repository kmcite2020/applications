import 'main.dart';
export 'package:manager/manager.dart';
export 'package:prescription_er/patients_list.dart';

void main() => runApp(App());

class App extends TopUI {
  const App();

  get theme => ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
  splashScreen() => CircularProgressIndicator().center();
  homePage(context) => PatientsListPage();
}
