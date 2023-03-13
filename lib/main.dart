import 'package:apps/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'commons/extensions.dart';
import 'commons/storage.dart';
import 'commons/themes.dart';
import 'features/settings/personalizations/background/widgets/backtainer_view.dart';
import 'features/settings/personalizations/personalizations_bloc.dart';
import 'features/settings/settings_view.dart';

void main() async {
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyMaterialApp();
  }
}

class MyMaterialApp extends ReactiveStatelessWidget {
  const MyMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: Themes.theme,
      darkTheme: Themes.darkTheme,
      themeMode: personalizationsBloc.themeMode,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                onPressed: () => RM.navigate.to(const SettingsView()),
                icon: const Icon(
                  Icons.settings,
                ),
              ).pad,
            ],
          ),
        ),
        body: BackTainer(
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () => RM.navigate.to(const Calculator()),
                child: "Calculator".text,
              ).pad
            ],
          ),
        ),
      ),
    );
  }
}
