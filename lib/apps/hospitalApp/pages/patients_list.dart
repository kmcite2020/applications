// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, unused_import, unnecessary_type_check, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, invalid_use_of_protected_member, unnecessary_brace_in_string_interps, dead_code, unnecessary_import, sized_box_for_whitespace, unused_local_variable, avoid_print, sort_child_properties_last, curly_braces_in_flow_control_structures

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:states_rebuilder/scr/state_management/rm.dart';

// import '../components/custom_drawer.dart';
// import '../components/patients_progress_bar.dart';
// import '../components/widgets.dart';
// import '../core/core.dart';
// import '../hospitalApp.dart';
// import 'archives_list.dart';
// import 'patient_admission_form.dart';
// import 'patient_details.dart';
// import 'settings.dart';

// class PatientListView extends ReactiveStatelessWidget {
//   PatientListView({super.key});
//   static const label = 'Patient List';
//   static const icon = Icon(Icons.people);
//   @override
//   Widget build(BuildContext context) {
//     double topicsSize = 12;
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: CustomDrawer(label),
//       body: ListView(
//         children: [
//           PatientsProgressBar(),
//           //   for (final Map<dynamic, dynamic> patient in patients.values)
//           //     CardTile(
//           //       leading: InkWell(
//           //         // onTap: () => increaseAge(patient['age']),
//           //         // onLongPress: () => decreaseAge(patient),
//           //         child: CircleAvatar(
//           //           child: Text(patient['age'].toInt().toString()),
//           //         ),
//           //       ),
//           //       title: Column(
//           //         crossAxisAlignment: CrossAxisAlignment.start,
//           //         children: [
//           //           // Text3(investigations().toString(), size: 13),
//           //           Center(child: Text3(patient['name'])),
//           //           Text3(''
//           //               // '${patient['age']} years old ${patient['gender'] == 'MALE' ? 'male' : 'female'} presented to us with ${patient['presenting complaints'].isEmpty ? 'no complaints' : patient['presenting complaints']}. ${patient['gender'] == 'MALE' ? 'His' : 'Her'}  vitals are ${patient['blood pressure']}, ${patient['pulse']}, ${patient['temperature']} and ${patient['saturation']}. Investigations advised are ${patient['investigations']}.',
//           //               // size: 12,
//           //               )
//           //         ],
//           //       ),
//           //       description: Column(
//           //         crossAxisAlignment: CrossAxisAlignment.start,
//           //         children: [
//           //           Text3('O/E:', size: topicsSize),
//           //           Text3(patient["examinations"]),
//           //           Text3('MANAGEMENT:', size: topicsSize),
//           //           Text3(patient['management']),
//           //           Text3('DIAGNOSIS:', size: topicsSize),
//           //           Text3(patient['diagnosis'])
//           //         ],
//           //       ),
//           //       // trailing: CircleAvatar(
//           //       //     child: IconButton(
//           //       //         onPressed: () => setGender(patient),
//           //       //         icon: Icon(patient.gender ? MdiIcons.humanMale : MdiIcons.humanFemale))),
//           //       onLongPress: () => dischargePatient(patient['id']),
//           //       onTap: () {
//           //         log(patient['investigations'].toString());
//           //         RM.navigate.to(PatientDetails(patient));
//           //         // open(context, page: PatientDetails(patient));
//           //       },
//           //     ),
//         ],
//       ),
//     );
//   }
// }
