// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import 'model.dart';

// final ManagerDoctor managerDoctor = ManagerDoctor();

// @immutable
// class ManagerDoctor {
//   final nameController = RM.injectTextEditing(
//     autoDispose: false,
//     validateOnTyping: true,
//     validateOnLoseFocus: true,
//     validators: [
//       (value) {
//         if (value == null || value.isEmpty) {
//           return 'Should not be empty';
//         } else {
//           return null;
//         }
//       },
//     ],
//   );
//   final doctorTypeController = RM.injectFormField<DoctorType>(DoctorType.houseOfficer);
//   final specialityTypeController = RM.injectFormField<SpecialityType>(SpecialityType.emergencyMedicine);
//   final experienceController = RM.injectFormField<int>(0);
//   final codeForDoctor = RM.injectTextEditing(
//     autoDispose: false,
//   );
//   final doctorsRM = RM.inject<List<Doctor>>(
//     () => [],
//     persist: () => PersistState(
//       key: "DOCTORS",
//       toJson: (s) {
//         Map map = {};
//         for (final eachDoctor in s) {
//           map[eachDoctor.userID] = eachDoctor.toMap();
//         }
//         return jsonEncode(map);
//       },
//       fromJson: (data) {
//         List<Doctor> list = [];
//         for (final Map<String, dynamic> eachMap in jsonDecode(data).values) {
//           list.add(Doctor.fromMap(eachMap));
//         }
//         return list;
//       },
//     ),
//   );
//   List<Doctor> get doctors => doctorsRM.state;

//   void deleteDocotor(Doctor doctor) {
//     doctorsRM.state = [
//       for (final eachDoctor in doctors)
//         if (eachDoctor != doctor) eachDoctor
//     ];
//   }

//   void addDoctor() {
//     doctorsRM.state = [
//       ...doctorsRM.state,
//       Doctor(
//         userID: Uuid().v1(),
//         name: nameController.text,
//         doctorType: doctorTypeController.value,
//         specialityType: specialityTypeController.value,
//         experience: experienceController.value.toString(),
//         code: codeForDoctor.value.toString(),
//       ),
//     ];
//     nameController.reset();
//   }
// }

// enum DoctorType {
//   houseOfficer,
//   medicalOfficer,
//   consultant,
//   professor,
// }

// enum SpecialityType {
//   radiology,
//   generalMedicine,
//   generalSurgery,
//   anesthesia,
//   emergencyMedicine,
//   opthalmology,
//   otorhinolaryngology,
//   forensicMedicine,
//   cardiology,
//   neurology,
//   neurosurgery,
//   urology,
//   nephrology,
//   hepatology,
//   gastroenterology,
//   vascularSurgery,
//   pediatrics,
//   neonatology,
//   oncology
// }
