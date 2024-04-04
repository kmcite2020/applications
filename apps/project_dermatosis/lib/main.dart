import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_dermatosis/features/core/hive_storage.dart';
import 'package:project_dermatosis/features/core/router.dart';
import 'package:project_dermatosis/features/dashboard/dashboard_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/settings/settings_page/themes.dart';

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
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await patientsBoxRM.initializeState();
  await RM.storageInitializer(HiveStorage());
  await directoryRM.initializeState();
  runApp(
    const MyApp(),
  );
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
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
