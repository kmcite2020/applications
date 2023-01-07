// import 'package:equatable/equatable.dart';
// import 'package:flutter/cupertino.dart';

// import 'logic.dart';

// @immutable
// class Doctor extends Equatable {
//   final String userID;
//   final String name;
//   final DoctorType doctorType;
//   final SpecialityType specialityType;
//   final String experience;
//   final String code;

//   const Doctor({
//     required this.userID,
//     required this.name,
//     required this.doctorType,
//     required this.specialityType,
//     required this.experience,
//     required this.code,
//   });
//   Doctor copyWith({
//     String? userID,
//     String? name,
//     DoctorType? doctorType,
//     SpecialityType? specialityType,
//     String? experience,
//     String? code,
//   }) {
//     return Doctor(
//       userID: userID ?? this.userID,
//       name: name ?? this.name,
//       doctorType: doctorType ?? this.doctorType,
//       specialityType: specialityType ?? this.specialityType,
//       experience: experience ?? this.experience,
//       code: code ?? this.code,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'userID': userID,
//       'name': name,
//       'doctorType': DoctorType.values.indexOf(doctorType),
//       'specialityType': SpecialityType.values.indexOf(specialityType),
//       'experience': experience,
//       'code': code,
//     };
//   }

//   factory Doctor.fromMap(Map<String, dynamic> map) {
//     return Doctor(
//       userID: map['userID'] as String,
//       name: map['name'] as String,
//       doctorType: DoctorType.values[map['doctorType'] ?? 0],
//       specialityType: SpecialityType.values[map['specialityType'] ?? 4],
//       experience: map['experience'].toString(),
//       code: map['code'].toString(),
//     );
//   }

//   @override
//   List get props => [userID];
// }
