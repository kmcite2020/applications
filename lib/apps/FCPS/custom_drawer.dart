// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// import 'package:dashboard/apps/FCPS/pages/dashboard.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import 'FCPS.dart';
// import 'pages/profile.dart';
// import 'pages/settings.dart';
// import 'pages/subjects.dart';
// import 'pages/syllabus.dart';

// class CustomDrawer extends ReactiveStatelessWidget {
//   @override
//   build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(
//             height: 6,
//           ),
//           ContainerButton(
//             color: Colors.black,
//             label: 'Dashboard',
//             onTap: () {
//               RM.navigate.to(Dashboard());
//             },
//           ),
//           ContainerButton(
//             color: Colors.black,
//             label: 'Settings',
//             onTap: () {
//               RM.navigate.to(SettingsPage());
//             },
//           ),
//           ContainerButton(
//             color: Colors.black,
//             label: 'User Profile',
//             onTap: () {
//               RM.navigate.to(ProfilePage());
//             },
//           ),
//           ContainerButton(
//             color: Colors.black,
//             label: 'Subjects',
//             onTap: () {
//               RM.navigate.to(SubjectsPage());
//             },
//           ),
//           ContainerButton(
//             color: Colors.black,
//             label: 'Syllabus',
//             onTap: () {
//               RM.navigate.to(SyllabusPage());
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ContainerButton extends StatelessWidget {
//   final VoidCallback onTap;
//   final String label;
//   final Color? color;

//   const ContainerButton({
//     Key? key,
//     required this.color,
//     required this.label,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(roundedCornerRadius)),
//       child: GestureDetector(
//         onTap: onTap,
//         child: Text(label),
//       ),
//     );
//   }
// }
