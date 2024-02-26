// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';

// import 'package:extensions/main.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// @freezed
// class Doctor with _$Doctor {
//   const Doctor._();
//   const factory Doctor({
//     required final String id,
//     @Default('') final String name,
//     @Default(Gender.male) final Gender gender,
//     required final DateTime dateOfBirth,
//     @Default('') final String qualifications,
//     @Default('') final String contactDetails,
//     @Default('') final String profilePicture,
//     @Default('') final String departments,
//     @Default(true) final bool editing,
//   }) = _Doctor;

//   Uint8List? get image {
//     if (profilePicture != '') {
//       return File(profilePicture).readAsBytesSync();
//     }
//     return null;
//   }

//   factory Doctor.fromJson(json) => _$DoctorFromJson(json);
//   factory Doctor.get({required String id}) => doctorsManager.get(id);

//   static List<Doctor> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => Doctor.fromJson(e)).toList();
//   }

//   static String toListJson(List<Doctor> doctors) {
//     final List result = doctors.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }

//   factory Doctor.init() => Doctor(
//         id: randomID,
//         dateOfBirth: DateTime(1995),
//       );
// }

// enum Gender { male, female }

// final doctorEditor = DoctorEditor();

// class DoctorEditor {
//   late Injected<Doctor> localEditDoctorRM;
//   late Doctor editDoctor;
//   final globalEditDoctorRM = RM.inject<Doctor>(
//     () => throw UnimplementedError(),
//   );
//   void setEditDoctor(Doctor Function(Doctor doctor) modifier) =>
//       localEditDoctorRM.state = modifier(editDoctor);
//   void setName(String value) {
//     setEditDoctor((doctor) => doctor.copyWith(name: value));
//   }

//   void setGender(Gender? value) {
//     setEditDoctor((doctor) => doctor.copyWith(gender: value!));
//   }

//   void setDateOfBirth(DateTime value) {
//     setEditDoctor((doctor) => doctor.copyWith(dateOfBirth: value));
//   }

//   void setQualifications(String value) {
//     setEditDoctor((doctor) => doctor.copyWith(qualifications: value));
//   }

//   void setContactDetails(String value) {
//     setEditDoctor((doctor) => doctor.copyWith(contactDetails: value));
//   }

//   void setProfilePicture(String value) {
//     setEditDoctor((doctor) => doctor.copyWith(profilePicture: value));
//   }

//   void setDepartments(String value) {
//     setEditDoctor((doctor) => doctor.copyWith(departments: value));
//   }

//   void setEditing(bool? value) {
//     setEditDoctor((doctor) => doctor.copyWith(editing: value!));
//   }
// }

// class DoctorsManager {
//   final doctorsRM = RM.inject(
//     () => <Doctor>[],
//     persist: () => PersistState(
//       key: 'doctors',
//       fromJson: Doctor.fromListJson,
//       toJson: Doctor.toListJson,
//     ),
//   );
//   List<Doctor> get doctors => doctorsRM.state;
//   void setDoctor(Doctor doctor) {
//     List<Doctor> docs;
//     final index = doctors.indexWhere((element) => element.id == doctor.id);
//     if (index == -1) {
//       docs = List.from(doctors)..add(doctor);
//     } else {
//       docs = List.from(doctors)..[index] = doctor;
//     }
//     doctorsRM.state = docs;
//   }

//   void removeDoctor(Doctor doctor) {
//     doctorsRM.state = List.from(doctors)..remove(doctor);
//   }

//   void addDoctor() {
//     final doctor = Doctor.init();
//     doctorsRM.state = List.from(doctors)..add(doctor);
//   }

//   Doctor get(String id) => doctors.firstWhere((element) => element.id == id);
// }

// final doctorsManager = DoctorsManager();
