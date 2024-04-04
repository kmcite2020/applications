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
export 'package:hmis/patients/patients_rm.dart';
export 'package:hmis/patients/ui/add_patient_dialog.dart';
export 'package:hmis/patients/ui/patient_page.dart';
export 'package:hmis/patients/ui/patients_page.dart';
export 'package:hmis/settings/settings.dart';
export 'package:hmis/settings/settings_page.dart';
export 'package:hmis/settings/settings_rm.dart';
export 'package:manager/manager.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends TopUI {
  @override
  final dependencies = [
    Future.delayed(
      1.seconds,
      () => FlutterNativeSplash.preserve(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
      ),
    ),
    RM.storageInitializer(HiveStorage()),
  ];

  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  @override
  Widget buildApp(BuildContext context) {
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
      themeMode: themeMode,
      home: PopScope(
        canPop: false,
        child: AnimatedContainer(
          duration: animationDuration,
          child: switch (mainPages) {
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

final mainPagesRM = RM.inject(() => MainPages.home);
setMainPages(MainPages mainPages) => mainPagesRM.state = mainPages;
MainPages get mainPages => mainPagesRM.state;

const animationDuration = Duration(milliseconds: 500);
