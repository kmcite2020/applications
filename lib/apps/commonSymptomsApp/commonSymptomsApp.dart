// // ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

// import 'package:dashboard/apps/commonSymptomsApp/ui/admissionForm.dart';
// import 'package:dashboard/core/apps.dart';
// import 'package:dashboard/core/reactiveModels.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../idealApp/ui/settings.dart';
// import 'controllers/core.dart';
// import 'controllers/patient.dart';

// class CommonSymptomsApp extends ReactiveStatelessWidget {
//   CommonSymptomsApp({super.key});
//   final showTextField = false.inj();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Common Symptoms'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               RM.navigate.to(Settings());
//             },
//             icon: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.settings,
//               ),
//             ),
//           ),
//           AppSelectorToggle()
//         ],
//       ),
//       body: Column(
//         children: [
//           Divider(),
//           Text(
//             '${patients.length}',
//             textScaleFactor: 3,
//           ),
//           Divider(),
//           Text(mostCommonSymptom.description),
//           Divider(),
//           for (final eachPatient in patients)
//             EachPatientWidget(
//               showTextField: showTextField,
//               eachPatient: eachPatient,
//             )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => RM.navigate.to(AdmissionForm()),
//         tooltip: 'admit new patient',
//         child: Icon(Icons.admin_panel_settings),
//       ),
//     );
//   }
// }

// class EachPatientWidget extends StatelessWidget {
//   final Patient eachPatient;
//   final ReactiveModel<bool> showTextField;

//   const EachPatientWidget({super.key, required this.eachPatient, required this.showTextField});
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundColor: Theme.of(context).primaryColor,
//         child: Text(
//           "${eachPatient.age.inDays ~/ 365}",
//           textScaleFactor: 1.5,
//         ),
//       ),
//       trailing: IconButton(
//         icon: Icon(Icons.delete),
//         onPressed: () {
//           int index = patients.indexOf(eachPatient);
//           patients = [...patients]..removeAt(index);
//         },
//       ),
//       title: Column(
//         children: [
//           showTextField.state
//               ? TextFormField(
//                   initialValue: eachPatient.name,
//                   onFieldSubmitted: (value) {
//                     updatePatientName(value, eachPatient);
//                     showTextField.state = false;
//                   },
//                   keyboardType: TextInputType.name,
//                   textInputAction: TextInputAction.done,
//                 )
//               : ElevatedButton(
//                   // icon: Icon(Icons.update),
//                   onPressed: () {
//                     showTextField.state = true;
//                     // updatePatientName('Adn', eachPatient);
//                   },
//                   child: Text(eachPatient.name),
//                 ),
//         ],
//       ),
//       subtitle: Padding(
//         padding: EdgeInsets.all(padding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(padding),
//               child: Text("Symptoms:"),
//             ),
//             Wrap(
//               children: [
//                 for (final Symptom eachSymptom in eachPatient.symptoms)
//                   Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: Text("${eachSymptom.description},"),
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
