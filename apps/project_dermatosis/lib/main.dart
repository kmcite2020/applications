import 'main.dart';

export 'package:manager/manager.dart';
export 'package:hive_flutter/hive_flutter.dart';
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
  runApp(App());
}

class App extends TopUI {
  @override
  final dependencies = [
    directoryRM.initializeState(),
    patientsBoxRM.initializeState(),
  ];
  @override
  Widget homePage(_) => DashboardPage();
}
