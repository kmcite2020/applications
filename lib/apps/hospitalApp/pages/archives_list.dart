// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, unused_import, unnecessary_type_check, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, invalid_use_of_protected_member, unnecessary_brace_in_string_interps, dead_code, unnecessary_import, sized_box_for_whitespace, unused_local_variable, avoid_print, sort_child_properties_last, curly_braces_in_flow_control_structures, must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:states_rebuilder/scr/state_management/rm.dart';

// import '../components/custom_drawer.dart';
// import '../components/widgets.dart';
// import '../core/core.dart';
// import '../hospitalApp.dart';
// import 'patient_admission_form.dart';
// import 'patient_details.dart';

// class ArchivesList extends ReactiveStatelessWidget {
//   static const label = "Archives";
//   static const icon = Icon(Icons.archive);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: CustomDrawer(label),
//       appBar: AppBar(
//         title: Text('Archives'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           for (final patient in archivedPatients)
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(child: Text(patient.age.toInt().toString())),
//                 tileColor: patient.vitals ? Colors.green : Colors.red,
//                 // isThreeLine: true,
//                 title: Column(
//                   children: [
//                     Text3(patient.id, size: 13),
//                     Text3(
//                       patient.patient,
//                       size: 20,
//                     ),
//                   ],
//                 ),
//                 trailing: IconButton(
//                   onPressed: () {
//                     removePatientFromArchives = patient;
//                   },
//                   icon: Icon(Icons.delete_forever),
//                 ),
//                 subtitle: Column(
//                   children: [
//                     Text3(patient.gender ? 'M' : 'F'),
//                     Text3('P/C: ' + patient.complaints),
//                     Text3('Dx: ' + patient.diagnosis),
//                     OutlinedButton.icon(
//                         onPressed: () {
//                           readmitPatient();
//                         },
//                         icon: Icon(Icons.add_moderator),
//                         label: Text3('Readmit'))
//                   ],
//                 ),

//                 onTap: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => PatientDetails(patient),
//                   ),
//                 ),
//               ),
//             ),
//         ],
//         shrinkWrap: true,
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           BackButton2(),
//         ],
//       ),
//     );
//   }
// }
