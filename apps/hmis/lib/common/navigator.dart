// part of '../main.dart';

// const root = '/';

// final navigator = RM.injectNavigator(
//   initialLocation: HomePage.name,
//   routes: {
//     HomePage.name: (x) => RouteWidget(
//           builder: (c) => HomePage(),
//         ),
//     SettingsPage.name: (x) => SettingsPage(),
//     InvestigationsPage.name: (x) => InvestigationsPage(),
//     PatientsManagementPage.name: (x) => PatientsManagementPage(),
//     PatientAddingPage.name: (x) => PatientAddingPage(),
//   },
//   debugPrintWhenRouted: true,
//   onNavigateBack: (data) {
//     if (data == null) {
//       alertDialog(
//         title: 'You are about to close the app. Do you want to continue?',
//       );
//       return false;
//     }
//     return true;
//   },
// );

// abstract class Routes {
//   static const home = '/';
//   static const settings = '/settings';
//   static const investigations = '/investigations';
//   static const patients = '/patients';
//   static const addPatient = '/add_patient';
// }
