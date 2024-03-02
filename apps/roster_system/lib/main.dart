import 'package:manager/manager.dart';
import 'package:roster_system/doctors_management/pages/doctors_manager_page.dart';
import 'package:roster_system/settings/settings_rm.dart';
import 'package:roster_system/settings/settings_page.dart';

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
              RM.navigate.to(const DoctorsManagerPage());
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
