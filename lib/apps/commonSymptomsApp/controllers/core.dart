// // ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, unused_import
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import 'patient.dart';

// enum Symptom {
//   cough('Cough'),
//   fever('Fever'),
//   chestpain('Chest Pain'),
//   epigastricpain('Epigastric Pain'),
//   rightIlliacfossapain('Right Illiac Fossa Pain'),
//   righthypochondrialpain('Right Hypochondrial Pain'),
//   headache('Headache');

//   const Symptom(this.description);
//   final String description;
//   @override
//   String toString() => '$index, $description';
// }

// /// patients management

// /// FORM & FORM FIELDS
// final admissionForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     addPatient = Patient(
//       name: nameController.text,
//       symptoms: symptomsController.value,
//       id: Uuid().v1(),
//       age: Duration(
//         days: 365 * int.parse(ageController.value),
//       ),
//     );
//     print('admission successfull');
//   },
// );
// final nameController = RM.injectTextEditing(
//   validators: [
//     (val) {
//       if (val!.length < 6) {
//         return 'Name should be at least 6 characters';
//       }
//       return null;
//     }
//   ],
// );

// final ageController = RM.injectTextEditing(validators: [
//   (val) {
//     if (val == null || val.isEmpty) {
//       return '* required';
//     }
//     final r = int.tryParse(val);
//     if (r == null) {
//       return 'Must be a number';
//     }
//     return null;
//   }
// ]);
// final symptomsController = RM.injectFormField<List<Symptom>>(
//   [],
//   validators: [
//     (val) {
//       if (val.isEmpty) {
//         return 'Patient should have at least one complaint.';
//       }
//       return null;
//     }
//   ],
// );
