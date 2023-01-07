// // ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';
// import 'core.dart';

// class DatabaseDetailsPage extends ReactiveStatelessWidget {
//   const DatabaseDetailsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(currentDB.name)),
//       body: ListView(
//         shrinkWrap: true,
//         children: currentDB.isEmpty
//             ? [
//                 Padding(
//                   padding: EdgeInsets.all(padding),
//                   child: Text('Nothing found in database'),
//                 )
//               ]
//             : currentDB.keys
//                 .map(
//                   (key) => ListTile(
//                     title: KeyWidget(key),
//                     subtitle: KeyWidget(currentDB.toMap()[key]),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete_forever),
//                       onPressed: () {
//                         currentDB.delete(key);
//                         // Future.delayed(1.seconds);
//                         // currentDatabaseRM.state = currentDB;
//                       },
//                     ),
//                   ),
//                 )
//                 .toList(),
//       ),
//     );
//   }
// }

// class KeyWidget extends ReactiveStatelessWidget {
//   const KeyWidget(this.keyObject, {super.key});
//   final String keyObject;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(padding),
//       decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(borderRadius)),
//       child: Text(keyObject),
//     );
//   }
// }
