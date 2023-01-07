// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors_in_immutables, unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../core/reactiveModels.dart';
// import '../pages/archives_list.dart';
// import '../pages/homepage.dart';
// import '../pages/patients_list.dart';
// import '../pages/settings.dart';
// import '../pages/study.dart';
// import 'patients_progress_bar.dart';
// import 'widgets.dart';

// class CustomDrawer extends ReactiveStatelessWidget {
//   final label;

//   CustomDrawer(this.label);
//   @override
//   Widget build(BuildContext context) {
//     // final i10n = i18n.of(context);
//     return SafeArea(
//       child: Drawer(
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text(label),
//                   UserInfo(),
//                   SizedBox(height: 7),
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: ElevatedButton.icon(
//                       onPressed: () => RM.navigate.toReplacement(Homepage()),
//                       label: Text('HOMEPAGE'),
//                       icon: Icon(Icons.home),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: ElevatedButton.icon(
//                       onPressed: () => RM.navigate.toReplacement(PatientListView()),
//                       label: Text("ADMITTED PATIENTS"),
//                       icon: PatientListView.icon,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: ElevatedButton.icon(
//                       onPressed: () => RM.navigate.toReplacement(Settings()),
//                       label: Text('SETTINGS'),
//                       icon: Settings.icon,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: ElevatedButton.icon(
//                       onPressed: () => RM.navigate.toReplacement(ArchivesList()),
//                       label: Text("ARCHIVES PATIENTS"),
//                       icon: ArchivesList.icon,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: ElevatedButton.icon(
//                       label: Text("STUDY ROOM"),
//                       icon: Study.icon,
//                       onPressed: () => RM.navigate.toReplacement(Study()),
//                     ),
//                   ),
//                   PatientsProgressBar()
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text3('Copyrights Registered'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
