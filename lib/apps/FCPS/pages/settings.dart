// // ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

// import 'package:dashboard/core/themes/themes.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/scr/state_management/rm.dart';

// import '../core.dart';
// import '../components/widgets.dart';

// class SettingsPage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: ListView(
//         children: [
//           ThemeModeChanger(),
//           CardTile(
//             onTap: () => signout(context),
//             title: Text('LOGOUT'),
//             subtitle: Text('Re-login to fix common issues.'),
//           ),
//           CardTile(
//             title: Text('RESTART'),
//             subtitle: Text('if your experiencing some issues some of them may resolve this way.'),
//             onTap: () {},
//           ),
//           CardTile(
//             title: Text('DELETE ALL DATA'),
//             subtitle: Text('Dangerous action. no recovery.'),
//             onTap: () => deleteAllDataFromDisk(context),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.arrow_back),
//         onPressed: () => Navigator.pop(context),
//       ),
//     );
//   }
// }
