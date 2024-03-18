export 'dart:async';

import 'package:roster_system/settings/settings_rm.dart';

import 'main.dart';
export 'package:roster_system/settings/settings_page.dart';
export 'package:roster_system/departments/departments.dart';
export 'package:roster_system/departments/departments_rm.dart';
export 'package:roster_system/departments/ui/department_page.dart';
export 'package:flutter/foundation.dart';
export 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends TopUI {
  const App({super.key});

  @override
  List<FutureOr<void>>? ensureInitialization() {
    return [
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
  }

  @override
  Widget? splashScreen() => CircularProgressIndicator().pad();

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => MaterialApp(
        navigatorKey: RM.navigate.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: settingsRM.state.materialColor,
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: settingsRM.state.materialColor,
            brightness: Brightness.dark,
          ),
          inputDecorationTheme: InputDecorationTheme(),
        ),
        themeMode: settingsRM.state.themeMode,
        home: SettingsPage(),
      ),
    );
  }
}
