// // ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, prefer_const_constructors_in_immutables
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables, unused_field

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../controllers/core.dart';

// class PrescriptionInfo extends StatelessWidget {
//   final id;
//   PrescriptionInfo({
//     required this.id,
//     //  this.prescription,
//   });
//   title() {
//     for (final prescription in prescriptions) {
//       // if (prescription['id'] == id) return prescription['medicine'];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//             children: [
//               SizedBox(height: 6),
//               for (final prescription in prescriptions)
//                 // if (prescription['id'] == id)
//                 Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(8),
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 2, color: Colors.brown),
//                         shape: BoxShape.rectangle,
//                         // color: colors[color.value][900],
//                       ),
//                       // child: Text(prescription['id'].toString()),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(8),
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 2, color: Colors.brown),
//                         shape: BoxShape.rectangle,
//                         // color: colors[color.value][900],
//                       ),
//                       // child: Text(prescription['formulation'] + ' ' + prescription['medicine']),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(8),
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 2, color: Colors.brown),
//                         shape: BoxShape.rectangle,
//                         // color: colors[color.value][900],
//                       ),
//                       // child: Text(prescription['dose'] + ' ' + prescription['route'] + ' ' + prescription['frequency']),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(8),
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 2, color: Colors.brown),
//                         shape: BoxShape.rectangle,
//                         // color: colors[color.value][900],
//                       ),
//                       // child: Text(prescription['effect'].toString() + prescription['information'].toString()),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(8),
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 2, color: Colors.brown),
//                         shape: BoxShape.rectangle,
//                         // color: colors[color.value][900],
//                       ),
//                       child: Text('EDIT MODE - not implemented yet'),
//                     ),
//                   ],
//                 )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//             heroTag: Uuid().v1(),
//             child: Icon(Icons.arrow_back),
//             onPressed: () {
//               // Get.back();
//             },
//           ),
//           FloatingActionButton(
//             heroTag: Uuid().v1(),
//             child: Icon(Icons.delete),
//             onPressed: () {
//               RM.navigate.back();
//               // deletePrescription(id);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
