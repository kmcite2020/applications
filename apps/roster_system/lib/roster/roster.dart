// import '../../main.dart';
// import '../rosters/rosters.dart';

// part 'roster.freezed.dart';
// part 'roster.g.dart';

// @freezed
// class Roster with _$Roster {
//   const factory Roster.raw({
//     @Default(<String, RosterEntry>{})
//     final Map<String, RosterEntry> rosterEntries,
//     @Default('') final String rosterID,
//     @Default('') final String name,
//     @DateTimeRangeConverter() required final DateTimeRange withEffectFromTo,
//     @Default(<String>[]) final List<String> copyForwardedTo,
//     @Default('') final String signedBy,
//   }) = _Roster;
//   const Roster._();
//   String get fromDate => '${withEffectFromTo.start}';
//   String get toDate => '${withEffectFromTo.end}';
//   factory Roster.fromJson(json) => _$RosterFromJson(json);
//   factory Roster() => Roster.raw(
//         rosterID: randomID,
//         withEffectFromTo: DateTimeRange(
//           start: DateTime.now(),
//           end: DateTime.now(),
//         ),
//       );
//   factory Roster.id(String rosterID) => rosterFromID(rosterID);
// }

// @freezed
// class RosterEntry with _$RosterEntry {
//   const factory RosterEntry({
//     @Default('') final String rosterEntryID,
//     @Default(DayType.mon) final DayType dayType,
//     @Default(ShiftType.morning) final ShiftType shiftType,
//     @Default(<String>[]) final List<String> medicalOfficerIDs,
//   }) = _RosterEntry;

//   factory RosterEntry.fromJson(json) => _$RosterEntryFromJson(json);
// }

// enum ShiftType { morning, evening, night }

// enum DayType { mon, tue, wed, thu, fri, sat, sun }

// @freezed
// class MedicalOfficer with _$MedicalOfficer {
//   const factory MedicalOfficer({
//     @Default('') final String id,
//     @Default('') final String name,
//     @Default(17) final int scale,
//     @Default(30) final int totalDuties,
//   }) = _MedicalOfficer;

//   factory MedicalOfficer.fromJson(json) => _$MedicalOfficerFromJson(json);
//   const MedicalOfficer._();

//   factory MedicalOfficer.fromID(String eachMedicalOfficerID) {
//     return MedicalOfficer._();
//   }
// }

// @freezed
// class MedicalOfficers with _$MedicalOfficers {
//   const factory MedicalOfficers({
//     @Default(<String, MedicalOfficer>{})
//     final Map<String, MedicalOfficer> cache,
//   }) = _MedicalOfficers;

//   factory MedicalOfficers.fromJson(json) => _$MedicalOfficersFromJson(json);
// }

// class DateTimeRangeConverter
//     implements JsonConverter<DateTimeRange, Map<String, dynamic>> {
//   const DateTimeRangeConverter();

//   @override
//   DateTimeRange fromJson(Map<String, dynamic> json) {
//     final startEpoch = json['start'] as int?;
//     final endEpoch = json['end'] as int?;

//     if (startEpoch == null || endEpoch == null) {
//       throw FormatException('Invalid or missing datetime fields in JSON');
//     }

//     return DateTimeRange(
//       start: DateTime.fromMillisecondsSinceEpoch(startEpoch),
//       end: DateTime.fromMillisecondsSinceEpoch(endEpoch),
//     );
//   }

//   @override
//   Map<String, dynamic> toJson(DateTimeRange object) => {
//         'start': object.start.millisecondsSinceEpoch,
//         'end': object.end.millisecondsSinceEpoch,
//       };
// }
