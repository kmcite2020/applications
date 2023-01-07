// // ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, unused_import, unnecessary_type_check, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, invalid_use_of_protected_member, unnecessary_brace_in_string_interps, dead_code, unnecessary_import, sized_box_for_whitespace, unused_local_variable, avoid_print, sort_child_properties_last, curly_braces_in_flow_control_structures

// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:states_rebuilder/scr/state_management/rm.dart';
// import 'package:uuid/uuid.dart';

// import '../components/widgets.dart';
// import '../core/core.dart';
// import '../hospitalApp.dart';
// import 'archives_list.dart';
// import 'patients_list.dart';

// class PatientDetails extends ReactiveStatelessWidget {
//   final Map<dynamic, dynamic> patient;
//   PatientDetails(
//     this.patient,
//   );
//   static const icon = Icon(Icons.nature_people);
//   static const label = 'Patient Informations';

//   @override
//   Widget build(context) {
//     var width = MediaQuery.of(context).size.width;
//     var index = 0;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text3(patient['name'].toUpperCase()),
//         automaticallyImplyLeading: true,
//       ),
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         children: [
//           Text2('MEDICAL RECORD NUMBER'),
//           // InLineEditor(
//           //   controller: idController,
//           //   title: Text3(
//           //     patient['id'],
//           //   ),
//           //   valueSetter: () => patient['id'] = idController.text,
//           //   validator: (v) {
//           //     return 'h';
//           //   },
//           //   // onEdited: (value) {
//           //   //   patient.id = value;
//           //   // },
//           //   textInputType: TextInputType.text,
//           // ),
//           // Text2('NAME'),
//           // InLineEditor(
//           //   controller: nameController,
//           //   title: Text3(patient['name']),
//           //   valueSetter: () => patient['name'] = nameController.text,
//           //   textInputType: TextInputType.text,
//           //   //   onEdited: (String value) => patient.name = value,
//           // ),
//           Text2('BIODATA'),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () => increaseAge(patient['age']),
//                   onDoubleTap: () => decreaseAge(patient['age']),
//                   child: CircleAvatar(
//                     backgroundColor: Colors.amber,
//                     radius: 40,
//                     child: Text3(
//                       patient['age'].toString(),
//                       size: 30,
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () => setGender(patient['gender']),
//                   child: CircleAvatar(
//                     backgroundColor: Colors.green,
//                     radius: 40,
//                     child: patient['gender'] == 'MALE'
//                         ? Icon(
//                             Icons.male,
//                             size: 40,
//                           )
//                         : Icon(
//                             Icons.female,
//                             size: 40,
//                           ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () => setVitals(patient['blood pressure']),
//                   child: CircleAvatar(
//                     // backgroundColor: patient['pulse'] ? Colors.green : Colors.brown,
//                     radius: 40,
//                     // child: patient.vitals
//                     //     ? Icon(
//                     //         MdiIcons.heart,
//                     //         color: Colors.red,
//                     //         size: 40,
//                     //       )
//                     //     : Icon(
//                     //         MdiIcons.heartBroken,
//                     //         color: Colors.red,
//                     //         size: 40,
//                     //       ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Text2('PRESENTING COMPLAINTS'),
//           // InLineEditor(
//           //   controller: presentingComplaintsController,
//           //   textInputType: TextInputType.multiline,
//           //   title: Text3(patient['complaints']),
//           //   valueSetter: () => patient['complaints'] = presentingComplaintsController.text,
//           //   //     onEdited: (value) => patient.complaints = value,
//           // ),
//           // Text2('PAST HISTORY'),
//           // InLineEditor(
//           //   controller: historyController,
//           //   textInputType: TextInputType.multiline,
//           //   title: Text3(patient['history']),
//           //   valueSetter: () => patient['history'] = historyController.text,
//           //   //    onEdited: (value) => patient.history = value,
//           // ),
//           // Text2('ON EXAMINATION'),
//           // InLineEditor(
//           //   controller: examinationsController,
//           //   textInputType: TextInputType.multiline,
//           //   title: Text3(patient['examinations']),
//           //   valueSetter: () => patient['examinations'] = examinationsController.text,
//           //   //     onEdited: (value) => patient.examinations = value,
//           // ),
//           // Text2('INVESTIGATIONS'),
//           // InLineEditor(
//           //   controller: investigationsController,
//           //   textInputType: TextInputType.multiline,
//           //   title: Column(
//           //     children: [
//           //       for (final i in patient['investigations'].keys)
//           //         if (patient['investigations'][i] == true) Text(i.toString())
//           //     ],
//           //   ),
//           //   valueSetter: () => patient['investigations'] = investigationsController.text,
//           //   //   onEdited: (value) => patient.investigations = value,
//           // ),
//           // Text2('MANAGEMENT PLAN'),
//           // InLineEditor(
//           //   controller: managementController,
//           //   maxLines: 6,
//           //   textInputType: TextInputType.multiline,
//           //   title: Text3(patient['management']),
//           //   valueSetter: () => patient['management'] = managementController.text,
//           //   // onEdited: (value) => patient.management = value,
//           // ),
//           // Text2('DIAGNOSIS'),
//           // InLineEditor(
//           //   controller: diagnosisController,
//           //   textInputType: TextInputType.multiline,
//           //   title: Text3(patient['diagnosis']),
//           //   valueSetter: () => patient['diagnosis'] = diagnosisController.text,
//           //   //   onEdited: (value) => patient.diagnosis = value,
//           // ),
//         ],
//       ),
//       floatingActionButton: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: true
//             ? SizedBox()
//             : ButtonBar(
//                 children: [
//                   BackButton2(),
//                   FloatingActionButton.extended(
//                     heroTag: Uuid().v4(),
//                     label: Text3('Age'),
//                     icon: Icon(Icons.add),
//                     onPressed: () {
//                       increaseAge(patient);
//                     },
//                   ),
//                   FloatingActionButton.extended(
//                     heroTag: Uuid().v4(),
//                     label: Text3('Age'),
//                     icon: Icon(Icons.remove),
//                     onPressed: () {
//                       decreaseAge(patient);
//                     },
//                   )
//                 ],
//               ),
//       ),
//     );
//   }
// }
