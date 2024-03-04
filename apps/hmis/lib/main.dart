import 'package:hmis/main.dart';

export 'dart:convert';

export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:hmis/custom_app_bar.dart';
export 'package:hmis/home/home_page.dart';
export 'package:hmis/investigations/investigations.dart';
export 'package:hmis/investigations/investigations_page.dart';
export 'package:hmis/patients/patients.dart';
export 'package:hmis/patients/patients_management/patient_page.dart';
export 'package:hmis/patients/patients_management/patients_page.dart';
export 'package:hmis/patients/patients_rm.dart';
export 'package:hmis/settings/settings_rm.dart';
export 'package:hmis/settings/settings_page.dart';
export 'package:manager/manager.dart';

void main() async {
  RM.build(const MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});
  @override
  void didMountWidget(BuildContext context) {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      themeAnimationDuration: animationDuration,
      theme: FlexThemeData.light(
        useMaterial3: true,
        subThemesData: const FlexSubThemesData(defaultRadius: 5),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        subThemesData: const FlexSubThemesData(defaultRadius: 5),
      ),
      themeMode: settingsRM().themeMode,
      home: PopScope(
        canPop: false,
        child: AnimatedContainer(
          duration: animationDuration,
          child: switch (mainPagesRM()) {
            MainPages.home => const HomePage(),
            MainPages.patients => const PatientsPage(),
            MainPages.investigations => const InvestigationsPage(),
            MainPages.settings => const SettingsPage(),
          },
        ),
      ),
    );
  }
}

enum MainPages { home, patients, investigations, settings }

final mainPagesRM = Simple(MainPages.home);

const animationDuration = Duration(milliseconds: 500);
