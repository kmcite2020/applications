// import 'main.dart';

// export 'dart:convert';
// export 'package:colornames/colornames.dart';
// export 'package:flex_color_scheme/flex_color_scheme.dart';
// export 'package:flutter/material.dart';
// export 'package:freezed_annotation/freezed_annotation.dart';
// export 'package:hive_flutter/hive_flutter.dart';
// export 'package:roster_system/features/core/extensions.dart';
// export 'package:roster_system/features/core/hive_storage.dart';
// export 'package:roster_system/features/doctors_management/doctor.dart';
// export 'package:roster_system/features/doctors_management/doctor_editor.dart';
// export 'package:roster_system/features/doctors_management/pages/doctor_editor_page.dart';
// export 'package:roster_system/features/doctors_management/doctors_manager.dart';
// export 'package:roster_system/features/roster/medical_officers_manager.dart';
// export 'package:roster_system/features/roster/pages/roster_page.dart';
// export 'package:roster_system/features/roster/roster.dart';
// export 'package:roster_system/features/rosters/pages/rosters_page.dart';
// export 'package:roster_system/features/settings/settings.dart';
// export 'package:roster_system/features/settings/settings_manager.dart';
// export 'package:states_rebuilder/states_rebuilder.dart';

// typedef UI = ReactiveStatelessWidget;

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await RM.storageInitializer(HiveStorage());
//   // await RM.deleteAllPersistState();
//   runApp(const App());
// }

// class App extends UI {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: RM.navigate.navigatorKey,
//       debugShowCheckedModeBanner: false,
//       theme: theme,
//       darkTheme: darkTheme,
//       themeMode: settingsManager.get().themeMode,
//       home: RostersPage(),
//     );
//   }
// }

// ThemeData get theme {
//   return FlexThemeData.light(
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: materialColorRM(),
//     ),
//     subThemesData: FlexSubThemesData(
//       defaultRadius: settingsManager.get().borderRadius,
//     ),
//     useMaterial3: true,
//     lightIsWhite: true,
//     appBarStyle: FlexAppBarStyle.primary,
//   );
// }

// ThemeData get darkTheme {
//   return FlexThemeData.dark(
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: materialColorRM(),
//       brightness: Brightness.dark,
//     ),
//     subThemesData: FlexSubThemesData(
//       defaultRadius: settingsManager.get().borderRadius,
//     ),
//     appBarStyle: FlexAppBarStyle.primary,
//     useMaterial3: true,
//     darkIsTrueBlack: true,
//   );
// }
