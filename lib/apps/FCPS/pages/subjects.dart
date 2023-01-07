// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../core.dart';

// class SubjectsPage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text('Subjects'),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//         ),
//         body: ListView.builder(
//           itemCount: listOfSubjects.length,
//           itemBuilder: (context, index) => ListTile(
//             leading: Icon(Icons.apple),
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => SubtopicPage(index)));
//             },
//             title: Text(listOfSubjects[index]),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => Navigator.pop(context),
//           child: Icon(Icons.arrow_back),
//         ),
//       );
// }

// class SubtopicPage extends ReactiveStatelessWidget {
//   var mainIndex;

//   SubtopicPage(this.mainIndex);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: mainIndex,
//         itemBuilder: (context, childIndex) => ListTile(
//           title: Text(childIndex.toString()),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: Icon(Icons.arrow_back),
//       ),
//     );
//   }
// }
