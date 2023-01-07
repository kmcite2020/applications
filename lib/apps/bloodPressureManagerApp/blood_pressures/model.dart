// // ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, prefer_const_constructors
// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import 'package:dashboard/apps/hospitalApp/core/core.dart';

// final BPsRM = RM.inject<List<BloodPressureEntry>>(
//   () => <BloodPressureEntry>[],
//   persist: () => PersistState(
//     key: 'BLOOD_PRESSURES_ENTRY',
//     toJson: (s) => BloodPressureEntry.toListJson(s),
//     fromJson: (json) => BloodPressureEntry.fromListJson(json),
//   ),
// );
// List<BloodPressureEntry> get BPs => BPsRM.state;
// set addBPEntry(bp) {
//   BPsRM.state = [...BPs, bp];
// }

// set removeBPEntry(bp) {}

// class BloodPressureEntry extends Equatable {
//   final BloodPressure bloodPressure;
//   final String patientID;
//   final DateTime dateTaken;
//   final BloodPressureType bloodPressureType;

//   const BloodPressureEntry({
//     required this.bloodPressure,
//     required this.patientID,
//     required this.dateTaken,
//     required this.bloodPressureType,
//   });

//   BloodPressureEntry copyWith({
//     BloodPressure? bloodPressure,
//     String? patientID,
//     DateTime? dateTaken,
//     BloodPressureType? bloodPressureType,
//   }) {
//     return BloodPressureEntry(
//       bloodPressure: bloodPressure ?? this.bloodPressure,
//       patientID: patientID ?? this.patientID,
//       dateTaken: dateTaken ?? this.dateTaken,
//       bloodPressureType: bloodPressureType ?? this.bloodPressureType,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'bloodPressure': bloodPressure.toMap(),
//       'patientID': patientID,
//       'dateTaken': dateTaken.millisecondsSinceEpoch,
//       'bloodPressureType': BloodPressureType.values.indexOf(bloodPressureType),
//     };
//   }

//   factory BloodPressureEntry.fromMap(Map<String, dynamic> map) {
//     return BloodPressureEntry(
//       bloodPressure: BloodPressure.fromMap(map['bloodPressure'] as Map<String, dynamic>),
//       patientID: map['patientID'] as String,
//       dateTaken: DateTime.fromMillisecondsSinceEpoch(map['dateTaken'] as int),
//       bloodPressureType: BloodPressureType.values[map['bloodPressureType']],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory BloodPressureEntry.fromJson(String source) => BloodPressureEntry.fromMap(json.decode(source) as Map<String, dynamic>);

//   static List<BloodPressureEntry> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => BloodPressureEntry.fromJson(e)).toList();
//   }

//   static String toListJson(List<BloodPressureEntry> listOfBPEs) {
//     return json.encode(listOfBPEs.map((e) => e.toJson()).toList());
//   }

//   @override
//   String toString() {
//     return 'BloodPressureEntry(systolicBP: $systolicBP, diastolicBP: $diastolicBP, patientID: $patientID, dateTaken: $dateTaken)';
//   }

//   @override
//   List<Object> get props => [bloodPressure, patientID, dateTaken, bloodPressureType];

//   @override
//   bool get stringify => true;
// }

// enum BloodPressureType {
//   dangerouslyLow,
//   low,
//   normal,
//   high,
//   dangerouslyHigh,
//   urgency,
//   emergency,
// }

// final bloodPressuresRM = RM.inject<List<BloodPressureEntry>>(
//   () => [],
//   persist: () => PersistState(
//     key: "blood pressure entries",
//     fromJson: (source) => BloodPressureEntry.fromListJson(source),
//     toJson: (state) => BloodPressureEntry.toListJson(state),
//   ),
// );

// final systolicBPRM = RM.inject(() => 120.0);
// final diastolicBPRM = RM.inject(() => 80.0);
// final patientIDRM = RM.inject(() => Uuid().v1());
// final dateTakenRM = RM.inject(() => DateTime.now());
// final bloodPressureTypeRM = RM.inject(() => BloodPressureType.normal);
