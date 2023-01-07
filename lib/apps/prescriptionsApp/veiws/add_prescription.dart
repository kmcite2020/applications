// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, dead_code, prefer_const_literals_to_create_immutables, avoid_print, unnecessary_string_interpolations, must_be_immutable

// import 'package:flutter/material.dart';

// import '../../../core/reactiveModels.dart';

// class AddPrescription extends StatelessWidget {
//   // SettingController settingController = Get.find();
//   // PrescriptionController prescriptionController = Get.find();
//   // MedicineController medicineController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     // var color = settingController.color;

//     return Scaffold(
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         children: [
//           AppBar(title: Text('FORM - prescription')),
//           SizedBox(
//             height: 6,
//           ),
//           Container(
//             // padding: EdgeInsets.all(8),
//             // margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(width: 2, color: Colors.brown),
//                 shape: BoxShape.rectangle,
//                 color: color[900]),
//             child: Center(
//                 // child: Text(
//                 //   "${prescriptionController.formulation.value} ${prescriptionController.medicine.value} x ${prescriptionController.dose.value} x ${prescriptionController.route.value} x ${prescriptionController.frequency.value}",
//                 //   textScaleFactor: 1.1,
//                 // ),
//                 ),
//           ),
//           Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(width: 2, color: Colors.brown),
//               shape: BoxShape.rectangle,
//               // color: colors[color][900],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("FORMULATIONS"),
//                 // Text(prescriptionController.formulation.value),
//               ],
//             ),
//           ),
//           GridView.count(
//             physics: BouncingScrollPhysics(),
//             padding: EdgeInsets.all(5),
//             crossAxisCount: 5,
//             mainAxisSpacing: 5,
//             crossAxisSpacing: 5,
//             shrinkWrap: true,
//             children: [
//               // for (final String item in formulations)
//               //   Container(
//               //     decoration: BoxDecoration(
//               //       border: Border.all(width: 2, color: Colors.brown),
//               //       shape: BoxShape.circle,
//               //       color: item == prescriptionController.formulation.value ? colors[color][900] : colors[color][100],
//               //     ),
//               //     child: TextButton(
//               //       onPressed: () {
//               //         prescriptionController.formulation.value = item;
//               //       },
//               //       child: Text(
//               //         item,
//               //       ),
//               //     ),
//               //   ),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(width: 2, color: Colors.brown),
//               shape: BoxShape.rectangle,
//               // color: colors[color][900],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("MEDICINES"),
//                 // Text(prescriptionController.medicine.value),
//               ],
//             ),
//           ),
//           GridView.count(
//             physics: BouncingScrollPhysics(),
//             padding: EdgeInsets.all(5),
//             childAspectRatio: 4,
//             crossAxisCount: 2,
//             mainAxisSpacing: 5,
//             crossAxisSpacing: 5,
//             shrinkWrap: true,
//             children: [
//               // for (final item in medicineController.medicines)
//               //   Container(
//               //     decoration: BoxDecoration(
//               //       borderRadius: BorderRadius.circular(10),
//               //       border: Border.all(width: 2, color: Colors.brown),
//               //       shape: BoxShape.rectangle,
//               //       color: item == prescriptionController.medicine.value ? colors[color][900] : colors[color][100],
//               //     ),
//               //     child: TextButton(
//               //       onPressed: () {
//               //         prescriptionController.medicine.value = item;
//               //       },
//               //       child: Text(item),
//               //     ),
//               //   ),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(width: 2, color: Colors.brown),
//               shape: BoxShape.rectangle,
//               // color: colors[color][900],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("DOSES"),
//                 // Text(prescriptionController.dose.value),
//               ],
//             ),
//           ),
//           GridView.count(
//               physics: BouncingScrollPhysics(),
//               padding: EdgeInsets.all(5),
//               crossAxisCount: 5,
//               mainAxisSpacing: 5,
//               crossAxisSpacing: 5,
//               shrinkWrap: true,
//               children: [
//                 // for (final String item in doses)
//                 //   Container(
//                 //     decoration: BoxDecoration(
//                 //       border: Border.all(width: 2, color: Colors.brown),
//                 //       shape: BoxShape.rectangle,
//                 //       // color: item == prescriptionController.dose.value ? colors[color][900] : colors[color][100],
//                 //     ),
//                 //     child: TextButton(
//                 //       onPressed: () {
//                 //         // prescriptionController.dose.value = item;
//                 //       },
//                 //       child: Text(
//                 //         item,
//                 //       ),
//                 //     ),
//                 //   ),
//               ]),
//           Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(width: 2, color: Colors.brown),
//               shape: BoxShape.rectangle,
//               // color: colors[color][900],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("ROUTES"),
//                 // Text(prescriptionController.route.value),
//               ],
//             ),
//           ),
//           GridView.count(
//             physics: BouncingScrollPhysics(),
//             padding: EdgeInsets.all(5),
//             crossAxisCount: 5,
//             mainAxisSpacing: 5,
//             crossAxisSpacing: 5,
//             shrinkWrap: true,
//             children: [
//               // for (final String item in routes)
//               //   Container(
//               //     decoration: BoxDecoration(
//               //       border: Border.all(width: 2, color: Colors.brown),
//               //       shape: BoxShape.circle,
//               //       color: item == prescriptionController.route.value ? colors[color][900] : colors[color][100],
//               //     ),
//               //     child: TextButton(
//               //       onPressed: () {
//               //         prescriptionController.route.value = item;
//               //       },
//               //       child: Text(
//               //         item,
//               //       ),
//               //     ),
//               //   ),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(width: 2, color: Colors.brown),
//               shape: BoxShape.rectangle,
//               // color: colors[color][900],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("FREQUENCIES"),
//                 // Text(prescriptionController.frequency.value),
//               ],
//             ),
//           ),
//           GridView.count(
//               physics: BouncingScrollPhysics(),
//               padding: EdgeInsets.all(5),
//               crossAxisCount: 5,
//               mainAxisSpacing: 5,
//               crossAxisSpacing: 5,
//               shrinkWrap: true,
//               children: [
//                 // for (final String item in frequencies)
//                 //   Container(
//                 //     decoration: BoxDecoration(
//                 //       border: Border.all(width: 2, color: Colors.brown),
//                 //       shape: BoxShape.circle,
//                 //       // color: item == prescriptionController.frequency.value ? colors[color][900] : colors[color][100],
//                 //     ),
//                 //     child: TextButton(
//                 //       onPressed: () {
//                 //         // prescriptionController.frequency.value = item;
//                 //       },
//                 //       child: Text(
//                 //         item,
//                 //       ),
//                 //     ),
//                 //   ),
//               ]),
//           Container(
//               padding: EdgeInsets.all(8),
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(width: 2, color: Colors.brown),
//                 shape: BoxShape.rectangle,
//                 // color: colors[color][900],
//               ),
//               child: Text("SIDE EFFECTS")),
//           Container(
//             margin: EdgeInsets.all(5),
//             padding: EdgeInsets.all(5),
//             child: TextFormField(
//                 // initialValue: prescriptionController.effects
//                 ),
//           ),
//           Container(
//               padding: EdgeInsets.all(8),
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(width: 2, color: Colors.brown),
//                 shape: BoxShape.rectangle,
//                 // color: colors[color][900],
//               ),
//               child: Text("NOTES")),
//           Container(
//             margin: EdgeInsets.all(5),
//             padding: EdgeInsets.all(5),
//             child: TextField(
//                 // controller: noteRM.controller,
//                 ),
//           ),
//         ],
//       ),
//       // floatingActionButton: ButtonBar(
//       //   children: [
//       //     FloatingActionButton(heroTag: Uuid().v1(), tooltip: Uuid().v1(), child: Icon(Icons.arrow_back), onPressed: () => Get.back()),
//       //     medicineController.medicines.isNotEmpty // will be used for something (validation???)
//       //         ? FloatingActionButton(
//       //             heroTag: Uuid().v1(),
//       //             tooltip: Uuid().v1(),
//       //             child: Icon(Icons.done),
//       //             onPressed: () {
//       //               // if (medicineController.medicines.isEmpty) {
//       //               //   print('empty');
//       //               // } else {
//       //               //   prescriptionController.addPrescription(
//       //               //     Uuid().v4(),
//       //               //   );
//       //               // }
//       //               // Get.back();
//       //             },
//       //           )
//       //         : SizedBox()
//       //   ],
//       // ),
//     );
//   }
// }
