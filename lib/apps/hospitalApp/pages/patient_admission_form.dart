// //ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables,public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables, must_be_immutable, curly_braces_in_flow_control_structures, unused_import, unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../../../core/reactiveModels.dart';
// import '../../../core/themes/themes.dart';
// import '../components/investigations.dart';
// import '../components/widgets.dart';
// import '../core/core.dart';

// class PatientAdmissionForm extends ReactiveStatelessWidget {
//   static const icon = Icon(Icons.info);
//   static const label = 'Patient Admission Form';
//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return OnFormBuilder(
//         listenTo: patientAdmissionForm,
//         builder: () {
//           return Scaffold(
//             appBar: AppBar(title: Text3('Patient Admission'), centerTitle: true),
//             body: ListView(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(padding),
//                   child: TextField(
//                     controller: nameController.controller,
//                     focusNode: nameController.focusNode,
//                     decoration: InputDecoration(
//                       errorText: nameController.error,
//                       labelText: 'Full Name',
//                       hintText: "Enter patient's name",
//                       suffixIcon: nameController.hasError
//                           ? const Icon(Icons.error, color: Colors.red)
//                           : const Icon(Icons.check, color: Colors.green),
//                     ),
//                     keyboardType: TextInputType.text,
//                     textInputAction: TextInputAction.next,
//                     enabled: patientAdmissionForm.isFormEnabled,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(padding),
//                   child: TextField(
//                     controller: ageController.controller,
//                     focusNode: ageController.focusNode,
//                     decoration: InputDecoration(
//                       errorText: ageController.error,
//                       labelText: 'Age (in years)',
//                       hintText: 'Enter patients age in years',
//                       suffixIcon: ageController.hasError
//                           ? const Icon(Icons.error, color: Colors.red)
//                           : const Icon(Icons.check, color: Colors.green),
//                     ),
//                     keyboardType: TextInputType.number,
//                     textInputAction: TextInputAction.next,
//                     maxLength: 3,
//                     enabled: patientAdmissionForm.isFormEnabled,
//                   ),
//                 ),

//                 // InlineSlider(max: 120, min: 0, title: 'AGE', value: ageController.value),
//                 OnFormFieldBuilder(
//                     listenTo: genderController,
//                     builder: (gender, onChanged) {
//                       return DropdownButtonFormField(
//                         value: genderController.value,
//                         decoration: InputDecoration(labelText: 'GENDER', border: OutlineInputBorder(), errorText: genderController.error),
//                         icon: Icon(Icons.person),
//                         items: Gender.values
//                             .map(
//                               (e) => DropdownMenuItem(
//                                 value: e,
//                                 child: Text(e.name),
//                               ),
//                             )
//                             .toList(),
//                         onChanged: onChanged,
//                       );
//                     }),
//                 // TextFormField(
//                 //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 //   validator: (value) {
//                 //     if (value == null || value.isEmpty)
//                 //       return 'Required field';
//                 //     else
//                 //       return null;
//                 //   },
//                 //   // controller: presentingComplaintsController.controller,
//                 //   keyboardType: TextInputType.multiline,
//                 //   maxLines: 3,
//                 //   minLines: 1,
//                 //   decoration: InputDecoration(
//                 //       labelText: 'PRESENTING COMPLAINTS',
//                 //       helperText: 'ADD COMPLAINTS TO THIS FIELD',
//                 //       hintText: 'COMPLAINTS HERE...!',
//                 //       prefixIcon: Icon(Icons.healing),
//                 //       border: OutlineInputBorder()),
//                 // ),
//                 // TextFormField(
//                 //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 //   validator: (value) {
//                 //     if (value == null || value.isEmpty)
//                 //       return 'Required field';
//                 //     else
//                 //       return null;
//                 //   },
//                 //   // controller: activeComplaintsController.controller,
//                 //   keyboardType: TextInputType.multiline,
//                 //   maxLines: 3,
//                 //   minLines: 1,
//                 //   decoration: InputDecoration(
//                 //       labelText: 'ACTIVE COMPLAINTS',
//                 //       helperText: 'ADD COMPLAINTS TO THIS FIELD',
//                 //       hintText: 'COMPLAINTS HERE...!',
//                 //       prefixIcon: Icon(Icons.healing),
//                 //       border: OutlineInputBorder()),
//                 // ),
//                 // TextFormField(
//                 //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 //   validator: (value) {
//                 //     if (value == null || value.isEmpty)
//                 //       return 'Required field';
//                 //     else
//                 //       return null;
//                 //   },
//                 //   // controller: historyController.controller,
//                 //   // initialValue: patient.history,
//                 //   keyboardType: TextInputType.multiline,
//                 //   maxLines: 4,
//                 //   minLines: 1,
//                 //   decoration: InputDecoration(
//                 //     labelText: 'HISTORY',
//                 //     helperText: 'ADD HISTORY TO THIS FIELD',
//                 //     hintText: 'HISTORY HERE...!',
//                 //     prefixIcon: Icon(Icons.history),
//                 //     border: OutlineInputBorder(),
//                 //   ),
//                 // ),

//                 // /// end of feature
//                 // TextFormField(
//                 //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 //   validator: (value) {
//                 //     if (value == null || value.isEmpty)
//                 //       return 'Required field';
//                 //     else
//                 //       return null;
//                 //   },
//                 //   // controller: examinationsController.controller,
//                 //   keyboardType: TextInputType.multiline,
//                 //   maxLines: 6,
//                 //   minLines: 1,
//                 //   decoration: InputDecoration(
//                 //       labelText: 'EXAMINATIONS',
//                 //       helperText: 'ADD EXAMINATIONS TO THIS FIELD',
//                 //       hintText: 'EXAMINATIONS HERE...!',
//                 //       prefixIcon: Icon(Icons.note),
//                 //       border: OutlineInputBorder()),
//                 // ),

//                 // // InlineSlider(
//                 // //   min: 0,
//                 // //   max: 300,
//                 // //   value: systolicBP.value,
//                 // //   title: 'Systolic BP',
//                 // // ),
//                 // // InlineSlider(
//                 // //   min: 0,
//                 // //   max: 300,
//                 // //   value: diastolicBP.value,
//                 // //   title: 'Diastolic BP',
//                 // // ),
//                 // // Text('${systolicBP.value}/${diastolicBP.value}'),
//                 // InlineSlider(
//                 //   min: 0,
//                 //   max: 300,
//                 //   value: pulseController.value,
//                 //   title: 'Pulse',
//                 // ),
//                 // InlineSlider(
//                 //   min: 90,
//                 //   max: 120,
//                 //   value: temperatureController.value,
//                 //   title: 'Temperature',
//                 // ),
//                 // InlineSlider(
//                 //   min: 0,
//                 //   max: 100,
//                 //   value: saturationController.value,
//                 //   title: 'Saturation',
//                 // ),

//                 // Text('Investigations'),

//                 // Investigations(),

//                 // TextFormField(
//                 //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 //   validator: (value) {
//                 //     if (value == null || value.isEmpty)
//                 //       return 'Required field';
//                 //     else
//                 //       return null;
//                 //   },
//                 //   // controller: managementController.controller,
//                 //   keyboardType: TextInputType.multiline,
//                 //   maxLines: 6,
//                 //   minLines: 1,
//                 //   decoration: InputDecoration(
//                 //       labelText: 'MANAGEMENT',
//                 //       helperText: 'ADD MANAGEMENT TO THIS FIELD',
//                 //       hintText: 'MANAGEMENT HERE...!',
//                 //       prefixIcon: Icon(Icons.note),
//                 //       border: OutlineInputBorder()),
//                 // ),
//                 // // TextFormField(
//                 // //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 // //   validator: (value) {
//                 // //     if (value == null || value.isEmpty)
//                 // //       return 'Required field';
//                 // //     else
//                 // //       return null;
//                 // //   },
//                 // //   // controller: diagnosisController.controller,
//                 // //   keyboardType: TextInputType.multiline,
//                 // //   maxLines: 6,
//                 // //   minLines: 1,
//                 // //   decoration: InputDecoration(
//                 // //       labelText: 'DIAGNOSIS',
//                 // //       helperText: 'ADD DIAGNOSIS TO THIS FIELD',
//                 //       hintText: 'DIAGNOSIS HERE...!',
//                 //       prefixIcon: Icon(Icons.note),
//                 //       border: OutlineInputBorder()),
//                 // ),
//                 // // Text2('We will add BP,Pulse,Temp,Sp02 Monitoring etc in upcoming versions')
//               ],
//             ),
//             floatingActionButton: ButtonBar(
//               children: [
//                 //     BackButton2(),
//                 FloatingActionButton.extended(
//                   heroTag: Uuid().v1(),
//                   label: Text3('Admit'),
//                   icon: Icon(Icons.done),
//                   onPressed: () {
//                     String id = Uuid().v1();
//                     // admitPatient();
//                     // log(investigationsMap.toString());
//                     // patients.state = {
//                     //   ...patients.state,
//                     //   id: Patient(id, name.state, disease.state, pulse.state),
//                     // };
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }
