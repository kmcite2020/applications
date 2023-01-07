// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, annotate_overrides, file_names

// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';

// class SettingsApp extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//         actions: [
//           AppSelectorToggle(),
//         ],
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         children: themingWidgets(size)
//           ..addAll(
//             [
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text('About'),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text('Support'),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text('Licenses'),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text('Feedback'),
//               ),
//             ],
//           ),
//       ),
//     );
//   }
// }

// Widget buildFeedbackTile(BuildContext context) {
//   return ListTile(
//     title: Text('FEEDBACK'),
//     subtitle: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('other features will be added. soon'),
//       ],
//     ),
//   );
// }

// Widget buildHelp() => ListTile(
//       title: Text('HELP'),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('other features will be added. soon'),
//         ],
//       ),
//     );

// Widget buildAbout() => ListTile(
//       title: Text('ABOUT US'),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('checkout my github page.'),
//         ],
//       ),
//     );
