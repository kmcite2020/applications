// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, file_names

// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// class TodoApp extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return pages[index];
//   }
// }

// class Drawer1 extends StatelessWidget {
//   const Drawer1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         // shrinkWrap: true,
//         children: [
//           ListTile(
//             onTap: () => showMenu(
//               context: context,
//               position: RelativeRect.fromLTRB(70, 70, 70, 70),
//               items: [
//                 PopupMenuItem(
//                   child: Text(
//                     'Manage Account',
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     'Settings',
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     'Sync',
//                   ),
//                 ),
//               ],
//             ),
//             leading: CircleAvatar(child: Icon(Icons.account_box)),
//             title: Text('Adnan Farooq'),
//             subtitle: Text('college@outlook.com'),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(4),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 suffixIcon: Icon(
//                   Icons.search,
//                 ),
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.light_mode),
//             title: Text('My Day'),
//             onTap: () => indexRM.state = 0,
//           ),
//           ListTile(
//             leading: Icon(Icons.note),
//             title: Text('Planned'),
//             onTap: () => indexRM.state = 1,
//           ),
//           ListTile(
//             leading: Icon(Icons.all_inbox),
//             title: Text('All'),
//             onTap: () => indexRM.state = 2,
//           ),
//           ListTile(
//             leading: Icon(Icons.flag),
//             title: Text('Flagged Email'),
//             onTap: () => indexRM.state = 3,
//           ),
//           ListTile(
//             leading: Icon(Icons.task),
//             title: Text('Tasks'),
//             onTap: () => indexRM.state = 4,
//           ),
//           Divider(),
//           Spacer(),
//           ListTile(
//             leading: Icon(Icons.add),
//             title: Text(
//               'New List',
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// final indexRM = RM.inject(
//   () {
//     return 0;
//   },
//   stateInterceptor: (currentSnap, nextSnap) {
//     RM.navigate.back();
//     // debugPrint("$currentSnap $nextSnap");
//     return nextSnap;
//   },
// );
// int get index => indexRM.state;

// List<Widget> get pages => [
//       MyDay(),
//       Planned(),
//       All(),
//       FlaggedEmail(),
//       Tasks(),
//     ];

// class Tasks extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor.state,
//       drawer: Drawer1(),
//       appBar: AppBar(
//         title: Text(
//           'Tasks',
//         ),
//         actions: [AppSelectorToggle()],
//       ),
//     );
//   }
// }

// class Planned extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer1(),
//       appBar: AppBar1(
//         title: Text(
//           'Planned',
//         ),
//       ),
//     );
//   }
// }

// class MyDay extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor.state,
//       drawer: Drawer1(),
//       appBar: AppBar1(
//         title: Text(
//           'My Day',
//         ),
//       ),
//     );
//   }
// }

// class All extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor.state,
//       drawer: Drawer1(),
//       appBar: AppBar1(
//         title: Text(
//           'All',
//         ),
//       ),
//     );
//   }
// }

// class FlaggedEmail extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor.state,
//       drawer: Drawer1(),
//       appBar: AppBar1(
//         title: Text(
//           'Flagged Email',
//         ),
//       ),
//     );
//   }
// }

// class AppBar1 extends ReactiveStatelessWidget with PreferredSizeWidget {
//   Widget title;
//   AppBar1({required this.title});
//   @override
//   AppBar build(BuildContext context) {
//     return AppBar(
//       backgroundColor: backgroundColor.state.shade300,
//       title: title,
//       actions: [
//         IconButton(onPressed: () {}, icon: Icon(Icons.one_k_outlined)),
//         IconButton(onPressed: () {}, icon: Icon(Icons.light)),
//         IconButton(
//             onPressed: () {
//               showMenu(
//                 context: context,
//                 position: RelativeRect.fromLTRB(70, 70, 00, 00),
//                 items: [
//                   PopupMenuItem(
//                     child: ListTile(
//                       title: Text('Sort by'),
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: ListTile(
//                       title: Text('Theme'),
//                       subtitle: Wrap(
//                         children: [
//                           for (final eachColor in Colors.primaries.take(8))
//                             GestureDetector(
//                               onTap: () {
//                                 backgroundColor.state = eachColor;
//                                 RM.navigate.back();
//                               },
//                               child: Container(
//                                 color: eachColor,
//                                 width: 50,
//                                 height: 50,
//                               ),
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: ListTile(
//                       title: Text('Print to PDF'),
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: ListTile(
//                       title: Text('Email'),
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: ListTile(
//                       title: Text('Pin to Start Menu'),
//                       onTap: () => showDialog(
//                         context: context,
//                         builder: (_) => AlertDialog(
//                           title: Text('Pin to Start'),
//                           content: Text('Do you want to pin this app to Start?'),
//                           actions: [
//                             ElevatedButton(
//                               onPressed: () => RM.navigate.back(),
//                               child: Text('Yes'),
//                             ),
//                             ElevatedButton(
//                               onPressed: () => RM.navigate.back(),
//                               child: Text('No'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//             icon: Icon(Icons.donut_small))
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(50);
// }

// final backgroundColor = RM.inject(() => Colors.primaries.first);
