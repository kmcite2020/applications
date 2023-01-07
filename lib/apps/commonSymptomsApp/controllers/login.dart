// // ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, unused_local_variable
// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// class LoginPage extends ReactiveStatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(100),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(),
//             ),
//             Center(
//               child: Text(
//                 'NETFLIX',
//                 style: GoogleFonts.lato(fontSize: 35),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(Icons.edit),
//             )
//           ],
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text("Who's watching", style: GoogleFonts.lato(fontSize: 25)),
//           // buildAccountBar(size),
//         ],
//       ),
//     );
//   }
// }

// class RegisterPage extends ReactiveStatelessWidget {
//   const RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// /// by name and ID
// ///
// ///

// class Employee extends Equatable {
//   final String name;
//   final Education education;
//   final EmployeeType employeeType;
//   const Employee({
//     required this.name,
//     required this.education,
//     required this.employeeType,
//   });

//   Employee copyWith({
//     String? name,
//     Education? education,
//     EmployeeType? employeeType,
//   }) {
//     return Employee(
//       name: name ?? this.name,
//       education: education ?? this.education,
//       employeeType: employeeType ?? this.employeeType,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'education': education.toMap(),
//       'employeeType': employeeType.toMap(),
//     };
//   }

//   factory Employee.fromMap(Map<String, dynamic> map) {
//     return Employee(
//       name: map['name'] as String,
//       education: Education.fromMap(map['education'] as Map<String, dynamic>),
//       employeeType: EmployeeType.fromMap(map['employeeType'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Employee.fromJson(String source) => Employee.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [name, education, employeeType];
// }

// class EmployeeType extends Equatable {
//   static List<EmployeeType> employeeTypes = [
//     EmployeeType('Nursing Officer', 16),
//     EmployeeType('Medical Officer', 17),
//     EmployeeType('Medicolegal Officer', 17),
//     EmployeeType('Duty Manager - DMS', 17),
//     EmployeeType('Hospital Director', 18),
//     EmployeeType('Medical Director', 18),
//     EmployeeType('Finance Director', 18),
//     EmployeeType('Nursing Director', 18),
//   ];

//   const EmployeeType(this.description, this.payScale);
//   final String description;
//   final int payScale;

//   EmployeeType copyWith({
//     String? description,
//     int? payScale,
//   }) {
//     return EmployeeType(
//       description ?? this.description,
//       payScale ?? this.payScale,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'description': description,
//       'payScale': payScale,
//     };
//   }

//   factory EmployeeType.fromMap(Map<String, dynamic> map) {
//     return EmployeeType(
//       map['description'] as String,
//       map['payScale'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory EmployeeType.fromJson(String source) => EmployeeType.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [description, payScale];
// }

// class Education extends Equatable {
//   const Education(
//     this.description,
//   );
//   final String description;

//   Education copyWith({
//     String? description,
//   }) {
//     return Education(
//       description ?? this.description,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'description': description,
//     };
//   }

//   factory Education.fromMap(Map<String, dynamic> map) {
//     return Education(
//       map['description'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Education.fromJson(String source) => Education.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props => [description];

//   static List<Education> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => Education.fromJson(e)).toList();
//   }

//   static List<Education> educations = [
//     Education('MBBS only'),
//     Education('MBBS with FCPS'),
//     Education('BSN'),
//   ];
//   static String toListJson(List<Education> counters) {
//     final List result = counters.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }
// }
