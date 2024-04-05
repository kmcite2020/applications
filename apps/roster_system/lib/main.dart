export 'dart:async';
import 'package:roster_system/dashboard/dashboard.dart';

import 'main.dart';
export 'package:roster_system/settings/settings_page.dart';
export 'package:roster_system/departments/departments.dart';
export 'package:roster_system/departments/departments_rm.dart';
export 'package:roster_system/departments/ui/department_page.dart';
export 'package:flutter/foundation.dart';
export 'package:manager/manager.dart';
export 'package:roster_system/settings/settings_rm.dart';
export 'package:roster_system/departments/ui/departments_page.dart';

void main() {
  runApp(App());
}

class App extends TopUI {
  @override
  ThemeMode get themeMode => settings.themeMode;
  @override
  Widget homePage(BuildContext context) => DashboardPage();
}
