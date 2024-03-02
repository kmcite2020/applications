import 'main.dart';
export 'package:manager/manager.dart';
export 'package:roster_system/doctors/ui/doctors_page.dart';
export 'package:roster_system/settings/settings_rm.dart';
export 'package:roster_system/settings/settings_page.dart';
export 'package:roster_system/doctors/doctors.dart';
export 'package:roster_system/settings/settings.dart';
export 'package:roster_system/doctors/doctors_rm.dart';
export 'package:roster_system/departments/departments.dart';
export 'package:roster_system/departments/departments_rm.dart';
export 'package:roster_system/departments/ui/department_page.dart';
export 'package:roster_system/doctors/ui/doctor_page.dart';

void main() {
  RM.build(const MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: settingsRM().materialColor,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: settingsRM().materialColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: settingsRM().themeMode,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends UI {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Roster System'.text(),
        actions: [
          IconButton(
            onPressed: () {
              RM.navigate.to(const DoctorsPage());
            },
            icon: const Icon(Icons.healing),
          ),
          IconButton(
            onPressed: () {
              RM.navigate.to(const SettingsPage());
            },
            icon: const Icon(Icons.settings),
          ).pad(),
        ],
      ),
    );
  }
}
