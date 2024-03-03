import 'package:hmis/main.dart';
export 'dart:convert';
export 'package:hmis/investigations/investigations_page.dart';
export 'package:hmis/settings/settings_page.dart';
export 'package:hmis/patients/patients_management/patients_page.dart';
export 'package:hmis/patients/patients.dart';
export 'package:hmis/patients/patients_rm.dart';
export 'package:hmis/patients/patients_management/patient_page.dart';
export 'package:hmis/custom_app_bar.dart';
export 'package:hmis/leading_back_button.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:manager/manager.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:hmis/alert_dialog.dart';
export 'package:hmis/settings/settings_bloc.dart';
export 'package:hmis/home/home_page.dart';
export 'package:hmis/investigations/investigations.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  RM.build(const MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      themeAnimationDuration: animationDuration,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: settingsRM().themeMode,
      home: AnimatedSwitcher(
        duration: animationDuration,
        child: switch (mainPagesRM()) {
          MainPages.home => const HomePage(),
          MainPages.patients => const PatientsPage(),
          MainPages.investigatons => const InvestigationsPage(),
          MainPages.settings => const SettingsPage(),
        },
      ),
    );
  }
}

enum MainPages { home, patients, investigatons, settings }

final mainPagesRM = Simple(MainPages.home);

const animationDuration = Duration(milliseconds: 500);
