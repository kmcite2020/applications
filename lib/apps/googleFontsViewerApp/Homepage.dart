// // ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, avoid_print, depend_on_referenced_packages, file_names

// import 'dart:convert';
// import 'dart:math';

// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';
// import '../../core/themes/themes.dart';
// import 'FontViewer.dart';
// import 'ReactiveModels.dart';
// import 'Settings.dart';

// // final dataProvider = RM.injectStream(() async* {
// //   Response response = await get(
// //     Uri.parse("https://raw.githubusercontent.com/kmcite2020/jsonData/main/data.json?token=GHSAT0AAAAAAB3Q4ARZTQ767AGUWS7ISX6WY35LHMQ"),
// //   );
// //   yield response;
// // });

// class MyHomePage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       persistentFooterAlignment: AlignmentDirectional.bottomStart,
//       persistentFooterButtons: [
//         // dataProvider.onAll(
//         //   onData: (data) => Text(data.body),
//         //   onError: (error, s) {
//         //     return Text('ERROR');
//         //   },
//         //   onWaiting: () => Center(child: CircularProgressIndicator()),
//         // ),
//         // IconButton(
//         //   onPressed: () {
//         //     themeMode = ThemeMode.dark;
//         //   },
//         //   icon: Icon(
//         //     themeMode.name == 'dark' ? Icons.light_mode : Icons.dark_mode,
//         //   ),
//         // ),
//         // Text(
//         //   'ABCDEDFGHIJKLMNOPQRSTUVWXYZ',
//         //   textScaleFactor: 1,
//         // ),
//         // const Text(
//         //   'abcdefghijklmnopqrstuvwxyz',
//         //   softWrap: true,
//         //   textScaleFactor: 1,
//         // ),
//       ],
//       appBar: AppBar(
//         actions: [
//           AppSelectorToggle(),
//           IconButton(
//             tooltip: 'show all fonts',
//             onPressed: () => visibilityRM.state = !visiblity,
//             icon: Icon(
//               Icons.arrow_downward_sharp,
//             ),
//           ),
//           IconButton(
//             tooltip: 'RANDOMIZE COLOR EXPERIENCE',
//             onPressed: () {
//               color = colors[Random().nextInt(colors.length)];
//             },
//             icon: const Icon(Icons.color_lens),
//           ),
//           IconButton(onPressed: () => RM.navigate.to(Settings()), icon: Icon(Icons.settings))
//         ],
//         title: Text('Google Fonts'),
//       ),
//       body: FontsViewer(),
//     );
//   }
// }
