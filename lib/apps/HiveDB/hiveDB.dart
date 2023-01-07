// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, file_names

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/apps.dart';
// import '../../core/reactiveModels.dart';
// import 'core.dart';

// @immutable
// class HiveDB extends ReactiveStatelessWidget {
//   const HiveDB({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: [HiveExplorer(), HiveEditor()][0],
//     );
//   }
// }

// final indexRM = 0.inj();

// @immutable
// class HiveEditor extends ReactiveStatelessWidget {
//   const HiveEditor({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('HIVE EDITOR')),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Add List of Data to HiveDB',
//             ),
//             Text(
//               'Add Map of Data to HiveDB',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             Text(
//               'Hive Editor',
//             ),
//             ListView.builder(
//               physics: BouncingScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: indexRM.state + 1,
//               itemBuilder: (_, __) => ListTile(
//                 title: TextField(),
//                 subtitle: TextField(
//                   controller: asd.controller,
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: () {
//                     indexRM.state++;
//                   },
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// final asd = RM.injectTextEditing();

// @immutable
// class HiveExplorer extends StatelessWidget {
//   const HiveExplorer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [AppSelectorToggle()],
//         elevation: 0,
//         toolbarHeight: 80,
//         title: Text(
//           'HiveDB Explorer',
//           textScaleFactor: 1.2,
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: Text('Please look for file ending with .hive and select it.', textScaleFactor: 1.5),
//           ),
//           if (filesRM.isWaiting)
//             Center(child: CircularProgressIndicator())
//           else
//             for (final file in files)
//               ListTile(
//                 selected: currentFileRM.state == file.uri.pathSegments.last.split('.hive').first,
//                 onTap: () {
//                   currentFileRM.state = file.uri.pathSegments.last.split('.hive').first;
//                 },
//                 title: Column(
//                   children: [
//                     Text(
//                       file.uri.pathSegments.last.split('.hive').first,
//                     ),
//                   ],
//                 ),
//                 subtitle: Text(
//                   file.path,
//                 ),
//               ),
//           Text(
//             'Error',
//           )
//         ],
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//             heroTag: randomID,
//             onPressed: () {
//               openBox();
//             },
//             tooltip: 'Load a DB',
//             child: Icon(
//               Icons.leaderboard_outlined,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// /// clear - delete all entries
// /// close -
// /// compact - optimize
// /// check if specific key is present | return the value /true at the key
// /// create a map from box
// /// add k-v pair
// /// add map k-v pairs
// /// add at specific key loacation
// /// return a key at specific index
// /// edit an existing key's value
// /// delete a value

