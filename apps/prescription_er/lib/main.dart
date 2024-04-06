import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:prescription_er/patients_list.dart';

import 'main.dart';

export 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends TopUI {
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  Widget homePage(BuildContext context) {
    return OnReactive(
      () => MaterialApp(
        navigatorKey: RM.navigate.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(
          subThemesData: FlexSubThemesData(defaultRadius: 20),
        ),
        home: PatientsListPage(),
      ),
      sideEffects: SideEffects(
        initState: () => FlutterNativeSplash.remove(),
      ),
    );
  }
}
