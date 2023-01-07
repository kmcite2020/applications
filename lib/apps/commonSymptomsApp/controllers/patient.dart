// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import 'core.dart';

// final patientsRM = RM.inject<List<Patient>>(
//   () => [],
//   persist: () => PersistState(
//     key: 'patient',
//     toJson: (s) => Patient.toListJson(s),
//     fromJson: (json) => Patient.fromListJson(json),
//   ),
// );

// List<Patient> get patients => patientsRM.state;
// set patients(List<Patient> value) => patientsRM.state = value;
// set addPatient(Patient patient) => patients = [...patients, patient];
// set removePatient(Patient patient) => patients = [
//       for (final eachPatient in patients)
//         if (eachPatient != patient) eachPatient
//     ];
// void updatePatientName(String name, Patient patient) => patients = [
//       for (final eachPatient in patients)
//         if (patient != eachPatient) eachPatient,
//       patient.copyWith(name: name)
//     ];

// void updatePatientAge(Duration age, Patient patient) => patients = [
//       for (final eachPatient in patients)
//         if (patient != eachPatient) eachPatient,
//       patient.copyWith(age: age)
//     ];

// void updatePatientSymptoms(symptoms, Patient patient) => patients = [
//       for (final eachPatient in patients)
//         if (patient != eachPatient) eachPatient,
//       patient.copyWith(symptoms: symptoms)
//     ];

// Symptom get mostCommonSymptom {
//   for (final x in patients) {
//     print(x.symptoms);
//   }
//   return Symptom.chestpain;
// }

// class Patient extends Equatable {
//   final String name;
//   final List<dynamic> symptoms;
//   final String id;
//   final Duration age;
//   const Patient({
//     required this.name,
//     required this.symptoms,
//     required this.id,
//     required this.age,
//   });

//   Patient copyWith({
//     String? name,
//     List<Symptom>? symptoms,
//     String? id,
//     Duration? age,
//   }) {
//     return Patient(
//       name: name ?? this.name,
//       symptoms: symptoms ?? this.symptoms,
//       id: id ?? this.id,
//       age: age ?? this.age,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     print(<String, dynamic>{
//       'name': name,
//       'symptoms': symptoms.map((x) => x.index).toList(),
//       'id': id,
//       'age': age.inSeconds,
//     });
//     return <String, dynamic>{
//       'name': name,
//       'symptoms': symptoms.map((x) => x.index).toList(),
//       'id': id,
//       'age': age.inSeconds,
//     };
//   }

//   factory Patient.fromMap(Map<String, dynamic> map) {
//     return Patient(
//       name: map['name'] as String,
//       symptoms: map['symptoms'].map((x) => Symptom.values.elementAt(x)).toList() as List<dynamic>,
//       id: map['id'] as String,
//       age: Duration(seconds: map['age'] as int),
//     );
//   }

//   String toJson() => jsonEncode(toMap());

//   factory Patient.fromJson(String source) => Patient.fromMap(jsonDecode(source) as Map<String, dynamic>);

//   @override
//   List<Object> get props => [name, symptoms, id, age.inDays];
//   static List<Patient> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => Patient.fromJson(e)).toList();
//   }

//   static String toListJson(List<Patient> counters) {
//     final List result = counters.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }

//   @override
//   bool get stringify => true;
// }
