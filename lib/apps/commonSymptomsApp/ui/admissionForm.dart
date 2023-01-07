// // ignore_for_file: prefer_const_constructors, file_names

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../core/reactiveModels.dart';
// import '../controllers/core.dart';

// class AdmissionForm extends StatelessWidget {
//   const AdmissionForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Admission Form'),
//       ),
//       body: ListTile(
//         subtitle: OnFormBuilder(
//           listenTo: admissionForm,
//           builder: () => Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: nameController.controller,
//                   focusNode: nameController.focusNode,
//                   decoration: InputDecoration(
//                     errorText: nameController.error,
//                     labelText: 'Full Name',
//                     hintText: "Enter patient's name",
//                     suffixIcon:
//                         nameController.hasError ? const Icon(Icons.error, color: Colors.red) : const Icon(Icons.check, color: Colors.green),
//                   ),
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.next,
//                   enabled: admissionForm.isFormEnabled,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: ageController.controller,
//                   focusNode: ageController.focusNode,
//                   decoration: InputDecoration(
//                     errorText: ageController.error,
//                     labelText: 'Age (in years)',
//                     hintText: 'Enter patients age in years',
//                     suffixIcon:
//                         ageController.hasError ? const Icon(Icons.error, color: Colors.red) : const Icon(Icons.check, color: Colors.green),
//                   ),
//                   keyboardType: TextInputType.number,
//                   textInputAction: TextInputAction.next,
//                   maxLength: 3,
//                   enabled: admissionForm.isFormEnabled,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder<List<Symptom>>(
//                   listenTo: symptomsController,
//                   inputDecoration: InputDecoration(
//                     labelText: 'Select any complaints the patient has',
//                     hintText: 'Enter complaints',
//                     suffixIcon: symptomsController.hasError
//                         ? const Icon(Icons.error, color: Colors.red)
//                         : const Icon(Icons.check, color: Colors.green),
//                   ),
//                   builder: (val, onChanged) {
//                     return Wrap(
//                       children: Symptom.values
//                           .map(
//                             (eachSymptom) => Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Checkbox(
//                                   value: val.contains(eachSymptom),
//                                   onChanged: (checked) {
//                                     if (checked!) {
//                                       symptomsController.value = [...val, eachSymptom];
//                                     } else {
//                                       symptomsController.value = val.where(
//                                         (eachSymptomLoad) {
//                                           return eachSymptom != eachSymptomLoad;
//                                         },
//                                       ).toList();
//                                     }
//                                   },
//                                 ),
//                                 Text(eachSymptom.description),
//                               ],
//                             ),
//                           )
//                           .toList(),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: ElevatedButton(
//                 onPressed: admissionForm.isDirty
//                     ? () {
//                         admissionForm.reset();
//                       }
//                     : null,
//                 child: const Text('Reset Form')),
//           ),
//           FloatingActionButton.extended(
//             onPressed: admissionForm.isValid
//                 ? () async {
//                     admissionForm.submit();
//                     RM.navigate.back();
//                   }
//                 : null,
//             icon: Icon(Icons.check),
//             label: const Text(
//               'Request Admission',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
