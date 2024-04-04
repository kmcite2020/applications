// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/core/core.dart';
import 'features/core/hive_storage.dart';
import 'features/settings/settings_bloc.dart';
typedef UI = ReactiveStatelessWidget;

final directoryRM = RM.injectFuture(
  () async {
    final xtr = await getApplicationDocumentsDirectory();
    Future.delayed(2.seconds);
    return xtr;
  },
  autoDisposeWhenNotUsed: false,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.deleteAllPersistState();
  await RM.storageInitializer(HiveStorage());
  // await directoryRM.initializeState();
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return directoryRM.buildWith<Directory>(
      builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: navigator.routeInformationParser,
          routerDelegate: navigator.routerDelegate,
          theme: themes.theme(),
          darkTheme: themes.darkTheme(),
          themeMode: settingsBloc.settings.themeMode,
        );
      },
    );
  }
}

extension InjectedExtensions<T> on Injected<T> {
  Widget buildWith<T>({
    required Widget Function(T value) builder,
  }) {
    return this.onAll(
      onWaiting: () => CircularProgressIndicator(),
      onError: (_, __) => CircularProgressIndicator(),
      onData: (value) => builder(value as T),
    );
  }
}
