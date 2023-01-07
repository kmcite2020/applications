// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, unused_import, override_on_non_overriding_member, avoid_print, prefer_typing_uninitialized_variables, avoid_init_to_null, unused_local_variable, avoid_function_literals_in_foreach_calls, invalid_use_of_protected_member, unnecessary_null_comparison, unused_field, constant_identifier_names

// import 'dart:convert';
// import 'dart:developer';

// import 'package:collection/collection.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../../../core/patientModel.dart';
// import '../components/investigations.dart';
// import '../hospitalApp.dart';
// import '../pages/archives_list.dart';
// import '../pages/homepage.dart';
// import '../pages/patient_admission_form.dart';
// import '../pages/patient_details.dart';
// import '../pages/patients_list.dart';
// import '../pages/settings.dart';

// final patientAdmissionForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {},
// );
// final nameController = RM.injectTextEditing();
// final ageController = RM.injectTextEditing();
// final genderController = RM.injectFormField<Gender>(Gender.male);
// final presentingComplaintsController = RM.injectTextEditing(text: '');
// final activeComplaintsController = RM.injectTextEditing(text: '');
// final historyController = RM.injectTextEditing(text: '');
// final examinationsController = RM.injectTextEditing(text: '');
// final systolicBP = RM.injectFormField<double>(120);
// final diastolicBP = RM.injectFormField<double>(80);
// final pulseController = RM.injectFormField<double>(72.0);
// final temperatureController = RM.injectFormField<double>(96.4);
// final saturationController = RM.injectFormField<double>(98.0);
// final investigationsController = RM.injectTextEditing(text: '');
// final diagnosisController = RM.injectTextEditing(text: '');
// final managementController = RM.injectTextEditing(text: '');

// // investigations implementation

// final name = RM.inject<String>(() => '');
// final disease = RM.inject<String>(() => '');
// final pulse = RM.inject<int>(() => 0);

// setGender(patient) {
//   patient.gender = !patient.gender;
// }

// decreaseAge(patient) => patient--;
// increaseAge(patient) => patient++;

// // change vital status
// setVitals(patient) {
//   // patient.vitals = !patient.vitals;
// }

// // wards info
// bool isNoBedAvailable = false;
// // implement for new admissions if no space available
// /// ARCHIVED PATIENTS - FUNCTIONALITY
// final archivedPatientsRM = RM.inject<List<Patient>>(() => <Patient>[]);
// get archivedPatients => archivedPatientsRM.state;
// set addPatientToArchives(patient) {
//   archivedPatientsRM.state = [
//     ...archivedPatients,
//     patient,
//   ];
// }

// set removePatientFromArchives(patient) {
//   archivedPatientsRM.state = [
//     for (final eachArchivedPatient in archivedPatientsRM.state)
//       if (eachArchivedPatient.id != patient.id) eachArchivedPatient
//   ];
// }

// /// PATIENTS - FUNCTIONALITY

// void dischargePatient(patientID) {
//   // admittedPatients.delete(patientID);
//   // patients.keys = [
//   //   for (final pt in patients.state)
//   //     if (pt.id != patient.id) pt
//   // ];

//   // _archivedPatientList.state = [..._archivedPatientList.state, patient];
// }

// /// PATIENT MANIPULATION
// // final id = RM.inject(
// //   () => '',
// //   // validators: [
// //   //   (value) {
// //   //     if (value == '') {
// //   //       return 'Required field';
// //   //     } else {
// //   //       return null;
// //   //     }
// //   //   },
// //   // ],
// // );

// final patientsRM = RM.inject<List<Patient>>(
//   () {
//     return [];
//   },
//   // dependsOn: DependsOn(
//   //   {name, disease, pulse},
//   // ),
//   persist: () => PersistState(
//     toJson: (patients) => Patient.toListJson(patients),
//     fromJson: (json) => Patient.fromListJson(json),
//     key: 'PATIENTS_1',
//   ),
// );
// List<Patient> get patients => patientsRM.state;
// set patients(value) => patientsRM.state = value;
// void admitPatient() {
//   patients = [
//     ...patients,
//     // Patient(id: id, name: name, age: age, gender: gender, complaints: complaints, history: history, pulse: pulse, saturation: saturation, temperature: temperature, bloodPressure: bloodPressure, investigation: investigation, managements: managements, disease: disease)
//   ];

//   // // _patientList.state = [..._patientList.state, patient];

//   // log('admitting');
//   // var id = Uuid().v4();
//   // log(id);
//   // admittedPatients.put(
//   //   id,
//   //   {
//   // 'id': id,
//   // 'name': nameController.text, //
//   // 'age': ageController.state, //
//   // 'gender': genderController.state,
//   // 'presenting complaints': presentingComplaintsController.text,
//   // 'active complaints': activeComplaintsController.text,
//   // 'history': historyController.text,
//   // 'examinations': examinationsController.text,
//   // 'blood pressure': '${systolicBP.state}/${diastolicBP.state}', //
//   // 'temperature': temperatureController.state, //
//   // 'pulse': pulseController.state, //
//   // 'saturation': saturationController.state, //
//   // 'investigations': investigationsMap,
//   // 'management': managementController.text,
//   // 'diagnosis': diagnosisController.text,
//   //   },
//   // );
//   // log(admittedPatients.values.toString());
// }

// void readmitPatient() {
//   // _archivedPatientList.state = [
//   //   for (final pt in _archivedPatientList.state)
//   //     if (pt.id != patient.id) pt
//   // ];
//   // _patientList.state = [..._patientList.state, patient];
// }

// enum Gender { male, female, other }

// class Investigation extends Equatable {
//   final String investigationName;
//   final double price;
//   Investigation({
//     required this.investigationName,
//     required this.price,
//   });

//   Investigation copyWith({
//     String? investigationName,
//     double? price,
//   }) {
//     return Investigation(
//       investigationName: investigationName ?? this.investigationName,
//       price: price ?? this.price,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'investigationName': investigationName,
//       'price': price,
//     };
//   }

//   factory Investigation.fromMap(Map<String, dynamic> map) {
//     return Investigation(
//       investigationName: map['investigationName'] as String,
//       price: map['price'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Investigation.fromJson(String source) => Investigation.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [investigationName, price];
// }

// class BloodPressure extends Equatable {
//   final double systolicBP;
//   final double diastolicBP;
//   BloodPressure({
//     required this.systolicBP,
//     required this.diastolicBP,
//   });

//   BloodPressure copyWith({
//     double? systolicBP,
//     double? diastolicBP,
//   }) {
//     return BloodPressure(
//       systolicBP: systolicBP ?? this.systolicBP,
//       diastolicBP: diastolicBP ?? this.diastolicBP,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'systolicBP': systolicBP,
//       'diastolicBP': diastolicBP,
//     };
//   }

//   factory BloodPressure.fromMap(Map<String, dynamic> map) {
//     return BloodPressure(
//       systolicBP: map['systolicBP'] as double,
//       diastolicBP: map['diastolicBP'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory BloodPressure.fromJson(String source) => BloodPressure.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [systolicBP, diastolicBP];
// }

// class Complaint extends Equatable {
//   final String id;
//   final String complaint;

//   Complaint({
//     required this.id,
//     required this.complaint,
//   });

//   Complaint copyWith({
//     String? id,
//     String? complaint,
//   }) {
//     return Complaint(
//       id: id ?? this.id,
//       complaint: complaint ?? this.complaint,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'complaint': complaint,
//     };
//   }

//   factory Complaint.fromMap(Map<String, dynamic> map) {
//     return Complaint(
//       id: map['id'] as String,
//       complaint: map['complaint'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Complaint.fromJson(String source) => Complaint.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [id, complaint];
// }
