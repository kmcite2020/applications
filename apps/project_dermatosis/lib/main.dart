import 'main.dart';

export 'package:manager/manager.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:project_dermatosis/features/core/router.dart';
export 'package:project_dermatosis/features/dashboard/dashboard_page.dart';

export 'features/settings/settings_page/themes.dart';

part 'features/core/constants.dart';

final directoryRM = RM.injectFuture(getApplicationCacheDirectory);

final patientsBoxRM = RM.injectFuture(
  () async {
    await Hive.initFlutter();
    return Hive.openBox('patients');
  },
);
Box get patientsBox => patientsBoxRM.state;

Directory get directory => directoryRM.state;

void main() async {
  runApp(MyApp());
}

class MyApp extends TopUI {
  @override
  final dependencies = [
    RM.storageInitializer(HiveStorage()),
    directoryRM.initializeState(),
    patientsBoxRM.initializeState(),
  ];
  @override
  Widget buildApp(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: themes.theme,
      darkTheme: themes.darkTheme,
      themeMode: themes.themeMode,
      home: DashboardPage(),
    );
  }
}
