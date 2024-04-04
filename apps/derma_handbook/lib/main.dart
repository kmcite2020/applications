import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive/hive.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/core/hive_storage.dart';
import 'features/core/router.dart';
import 'features/core/themes.dart';
import 'features/diseases/disease.dart';
import 'features/home/home_page.dart';
import 'features/settings/settings.dart';

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
Directory get directory => directoryRM.state;
Isar get isar => isarRM.state;
final isarRM = RM.inject(
  () => Isar.open(
    schemas: [
      DiseaseSchema,
    ],
    directory: directory.path,
    name: 'rx-derma',
  ),
);

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await directoryRM.initializeState();
  Hive.defaultDirectory = directory.path;
  await RM.storageInitializer(HiveStorage());
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});
  @override
  void didMountWidget(BuildContext context) {
    super.didMountWidget(context);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
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
