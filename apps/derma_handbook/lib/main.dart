export 'package:manager/manager.dart';
import 'features/core/router.dart';
import 'features/core/themes.dart';
import 'features/home/home_page.dart';
import 'features/settings/settings.dart';
import 'main.dart';

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
Directory get directory => directoryRM.state;
// Isar get isar => isarRM.state;
// final isarRM = RM.inject(
//   () => Isar.open(
//     schemas: [
//       DiseaseSchema,
//     ],
//     directory: directory.path,
//     name: 'rx-derma',
//   ),
// );

void main() => runApp(App());

class App extends TopUI {
  final dependencies = [
    RM.storageInitializer(HiveStorage()),
    directoryRM.initializeState()
  ];

  @override
  Widget buildApp(BuildContext context) {
    return MaterialApp(
      theme: themes.theme(),
      darkTheme: themes.darkTheme,
      themeMode: settingsManager.settings.themeMode,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator.navigatorKey,
      home: HomePage(),
    );
  }
}
