// // ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';

// class Settings extends ReactiveStatelessWidget {
//   Settings({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           for (final ThemeMode eachThemeMode in themeModes)
//             InkWell(
//               onTap: () => themeMode = eachThemeMode,
//               child: Text(
//                 "$eachThemeMode ${eachThemeMode == themeMode ? "Selected" : ''}",
//               ),
//             ),
//           Container(// dark
//               ),
//           Container(// font is already selected from the fonts functionality
//               )
//         ],
//       ),
//     );
//   }
// }
