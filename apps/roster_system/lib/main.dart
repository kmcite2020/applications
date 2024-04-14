export 'dart:async';

import 'main.dart';
export 'package:roster_system/settings/settings_page.dart';
export 'package:roster_system/departments/departments.dart';
export 'package:roster_system/departments/departments_rm.dart';
export 'package:roster_system/departments/ui/department_page.dart';
export 'package:flutter/foundation.dart';
export 'package:manager/manager.dart';
export 'package:roster_system/settings/settings_rm.dart';
export 'package:roster_system/departments/ui/departments_page.dart';

void main() => runApp(App());

class App extends TopUI {
  @override
  double get borderRadius => settingsRM().borderRadius;
  @override
  ThemeMode get themeMode => settingsRM().themeMode;
  @override
  MaterialColor get primarySwatch => settingsRM().materialColor;
  @override
  Widget homePage(BuildContext context) => SettingsPage();
}
