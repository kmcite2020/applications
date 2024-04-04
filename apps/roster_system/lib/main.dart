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
  final dependencies = [
    SynchronousFuture(
      WidgetsFlutterBinding.ensureInitialized(),
    ),
    Future.delayed(
      1000.milliseconds,
      () => RM.storageInitializer(
        HiveStorage(),
      ),
    ),
  ];

  @override
  Widget? splashScreen() => CircularProgressIndicator().center().pad();

  @override
  Widget buildApp(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settings.materialColor,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settings.materialColor,
          brightness: Brightness.dark,
        ),
        inputDecorationTheme: InputDecorationTheme(),
      ),
      themeMode: settings.themeMode,
      home: DashboardPage(),
    );
  }
}
