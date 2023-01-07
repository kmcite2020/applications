// // ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
// import 'package:dashboard/apps/HiveDB/core.dart';
// import 'package:dashboard/apps/HiveDB/databaseDetails.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';

// class DatabasePage extends ReactiveStatelessWidget {
//   const DatabasePage({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("${databaseRM.state.name}-${databaseRM.state.length} entries"),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//               onPressed: () {
//                 databaseRM.state.clear();
//               },
//               child: Text('CLEAR DATABASE'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text('OPTIMIZE & COMPACT DATABASE'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text('CLOSE DATABASE'),
//             ),
//           ),
//           Divider(),
//           OnFormBuilder(
//             listenTo: addKeyValuePair,
//             builder: () => Padding(
//               padding: EdgeInsets.all(padding),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Padding(
//                       padding: EdgeInsets.all(padding),
//                       child: TextFormField(
//                         controller: keyFF.controller,
//                         decoration: InputDecoration(
//                           labelText: 'KEY',
//                           errorText: keyFF.error,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Padding(
//                       padding: EdgeInsets.all(padding),
//                       child: TextFormField(
//                         decoration: InputDecoration(labelText: 'VALUE', errorText: valueFF.error),
//                         controller: valueFF.controller,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//               onPressed: addKeyValuePair.submit,
//               child: Text('ADD k-v pair to DATABASE'),
//             ),
//           ),
//           Divider(),
//           Card(
//             child: Padding(
//               padding: EdgeInsets.all(padding),
//               child: Text('RETURN VALUE BY INDEX'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'INDEX', errorText: indexFF.error),
//                     onChanged: (value) {
//                       if (int.parse(value) >= currentDB.length - 1) {
//                         indexFF.value = 0;
//                       } else {
//                         indexFF.value = int.parse(value);
//                       }
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.change_circle),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 4,
//                   child: Card(
//                     child: Padding(
//                       padding: EdgeInsets.all(padding),
//                       child: Text(
//                           // databaseRM.state.getAt(indexFF.value)
//                           ''),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Divider(),
//           Card(
//             child: Padding(
//               padding: EdgeInsets.all(padding),
//               child: Text('RETURN VALUE BY KEY'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: TextField(
//                     decoration: InputDecoration(labelText: 'KEY'),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.change_circle),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 4,
//                   child: Card(
//                     child: Padding(
//                       padding: EdgeInsets.all(padding),
//                       child: Text('value'),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Divider(),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//               onPressed: () {
//                 RM.navigate.to(DatabaseDetailsPage());
//               },
//               child: Text(
//                 'LIST ALL DATA',
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// /// check if specific key is present | return the value /true at the key
// /// create a map from box
// /// add k-v pair
// /// add map k-v pairs
// /// add at specific key loacation
// /// return a key at specific index
// /// edit an existing key's value
// /// delete a value


