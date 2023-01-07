// import 'dart:convert';

// import 'package:equatable/equatable.dart';

// import '../apps/hospitalApp/core/core.dart';

// class Patient extends Equatable {
//   final String id;
//   final String name;
//   final Duration age;
//   final Gender gender;
//   final List<Complaint> complaints;
//   final List<String> history;
//   final int pulse;
//   final int saturation;
//   final double temperature;
//   final BloodPressure bloodPressure;
//   final List<Investigation> investigation;
//   final List<String> managements;
//   final String disease;

//   const Patient({
//     required this.id,
//     required this.name,
//     required this.age,
//     required this.gender,
//     required this.complaints,
//     required this.history,
//     required this.pulse,
//     required this.saturation,
//     required this.temperature,
//     required this.bloodPressure,
//     required this.investigation,
//     required this.managements,
//     required this.disease,
//   });
//   @override
//   String toString() {
//     return "$id, $name, $disease, $pulse";
//   }

//   Patient copyWith({
//     String? id,
//     String? name,
//     Duration? age,
//     Gender? gender,
//     List<Complaint>? complaints,
//     List<String>? history,
//     int? pulse,
//     int? saturation,
//     double? temperature,
//     BloodPressure? bloodPressure,
//     List<Investigation>? investigation,
//     List<String>? managements,
//     String? disease,
//   }) {
//     return Patient(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       age: age ?? this.age,
//       gender: gender ?? this.gender,
//       complaints: complaints ?? this.complaints,
//       history: history ?? this.history,
//       pulse: pulse ?? this.pulse,
//       saturation: saturation ?? this.saturation,
//       temperature: temperature ?? this.temperature,
//       bloodPressure: bloodPressure ?? this.bloodPressure,
//       investigation: investigation ?? this.investigation,
//       managements: managements ?? this.managements,
//       disease: disease ?? this.disease,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       "id": id,
//       "name": name,
//       "age": age.inDays,
//       "gender": Gender.values.indexOf(gender),
//       "complaints": complaints.map((x) => x.toMap()).toList(),
//       "history": history,
//       "pulse": pulse,
//       "saturation": saturation,
//       "temperature": temperature,
//       "bloodPressure": bloodPressure.toMap(),
//       "investigation": investigation.map((x) => x.toMap()).toList(),
//       "managements": managements,
//       "disease": disease,
//     };
//   }

//   factory Patient.fromMap(Map<String, dynamic> map) {
//     return Patient(
//       id: map["id"] as String,
//       name: map["name"] as String,
//       age: Duration(days: map["age"]),
//       gender: Gender.values[map["gender"]],
//       complaints: List<Complaint>.from(
//         (map["complaints"] as List<int>).map<Complaint>(
//           (x) => Complaint.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       history: List<String>.from((map["history"] as List<String>)),
//       pulse: map["pulse"] as int,
//       saturation: map["saturation"] as int,
//       temperature: map["temperature"] as double,
//       bloodPressure: BloodPressure.fromMap(map["bloodPressure"] as Map<String, dynamic>),
//       investigation: List<Investigation>.from(
//         (map["investigation"] as List<int>).map<Investigation>(
//           (x) => Investigation.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       managements: List<String>.from((map["managements"] as List<String>)),
//       disease: map["disease"] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Patient.fromJson(String source) => Patient.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props {
//     return [
//       id,
//       name,
//       age,
//       gender,
//       complaints,
//       history,
//       pulse,
//       saturation,
//       temperature,
//       bloodPressure,
//       investigation,
//       managements,
//       disease,
//     ];
//   }

//   static List<Patient> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => Patient.fromJson(e)).toList();
//   }

//   static String toListJson(List<Patient> patients) {
//     final List result = patients.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }
// }
