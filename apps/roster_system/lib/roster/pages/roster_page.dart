// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:roster_system/features/roster/components/add_or_remove_medical_officer_dialog.dart';
// import 'package:roster_system/features/roster/components/roster_builder.dart';
// import 'package:roster_system/features/roster/roster_manager.dart';

// import '../../../main.dart';

// class RosterReadPage extends UI {
//   const RosterReadPage({
//     required this.rosterID,
//   });
//   final String rosterID;
//   @override
//   Widget build(context) {
//     return RosterBuilder(
//         rosterID: rosterID,
//         builder: (roster) {
//           return Scaffold(
//             appBar: AppBar(
//               title: roster.name.text(),
//             ),
//             body: ListView(
//               children: [
//                 roster.withEffectFromTo.str().text().pad(),
//                 Table(
//                   border: TableBorder.all(
//                       color: settingsManager.get().materialColor),
//                   children: [
//                     TableRow(
//                       children: [
//                         'DAY/SHIFT'.text().center().pad(),
//                         ...ShiftType.values
//                             .map((shift) =>
//                                 shift.name.toUpperCase().text().pad())
//                             .toList(),
//                       ],
//                     ),
//                     ...DayType.values.map(
//                       (dayType) {
//                         return TableRow(
//                           children: [
//                             dayType.name.toUpperCase().text().pad(),
//                             ...ShiftType.values.map(
//                               (shiftType) {
//                                 final medicalOfficers =
//                                     roster.rosterEntries.values
//                                         .where(
//                                           (entry) =>
//                                               entry.dayType == dayType &&
//                                               entry.shiftType == shiftType,
//                                         )
//                                         .expand(
//                                           (entry) =>
//                                               entry.medicalOfficerIDs.map(
//                                             (eachMedicalOfficerID) =>
//                                                 MedicalOfficer.fromID(
//                                               eachMedicalOfficerID,
//                                             ),
//                                           ),
//                                         )
//                                         .toList();

//                                 return OutlinedButton(
//                                   onPressed: () {
//                                     print(shiftType);
//                                     print(dayType);
//                                     RM.navigate.toDialog(
//                                       AddOrRemoveMedicalOfficerDialog(
//                                         medicalOfficers: medicalOfficers,
//                                         dayType: dayType,
//                                         shiftType: shiftType,
//                                       ),
//                                     );
//                                   },
//                                   child: Column(
//                                     children: medicalOfficers.map<Widget>(
//                                       (eachMedicalOfficer) {
//                                         return Wrap(
//                                           children: [
//                                             ElevatedButton(
//                                               onPressed: () {
//                                                 // removeMedicalOfficerFromRosterEntry(
//                                                 //   medicalOfficer: eachMedicalOfficer,
//                                                 //   dayType: day,
//                                                 //   shiftType: shift,
//                                                 // );
//                                               },
//                                               child: eachMedicalOfficer.name
//                                                   .toUpperCase()
//                                                   .text(),
//                                             ),
//                                           ],
//                                         );
//                                       },
//                                     ).toList(),
//                                   ),
//                                 ).pad();
//                               },
//                             ).toList(),
//                           ],
//                         );
//                       },
//                     ).toList(),
//                   ],
//                 ).pad(),
//               ],
//             ),
//           );
//         });
//   }
// }

// void addMedicalOfficer({
//   required MedicalOfficer medicalOfficer,
//   required DayType dayType,
//   required ShiftType shiftType,
// }) {
//   final rosterEntryOfInterest =
//       rosterManager.roster.rosterEntries.values.firstWhere(
//     (eachRosterEntry) =>
//         eachRosterEntry.dayType == dayType &&
//         eachRosterEntry.shiftType == shiftType,
//   );
//   final currentOfficers = rosterEntryOfInterest.medicalOfficerIDs;
//   rosterManager.setRosterEntry(
//     rosterEntryOfInterest.copyWith(
//       medicalOfficerIDs: currentOfficers..add(medicalOfficer.id),
//     ),
//   );
// }

// void removeMedicalOfficerFromRosterEntry({
//   required MedicalOfficer medicalOfficer,
//   required DayType dayType,
//   required ShiftType shiftType,
// }) {
//   final rosterEntryOfInterest =
//       rosterManager.roster.rosterEntries.values.firstWhere(
//     (eachRosterEntry) =>
//         eachRosterEntry.dayType == dayType &&
//         eachRosterEntry.shiftType == shiftType,
//   );
//   final currentOfficers = rosterEntryOfInterest.medicalOfficerIDs;
//   rosterManager.setRosterEntry(
//     rosterEntryOfInterest.copyWith(
//       medicalOfficerIDs: List.of(currentOfficers)..remove(medicalOfficer.id),
//     ),
//   );
// }

// extension DateTimeRangeExtension on DateTimeRange {
//   String str() {
//     final from = this.start;
//     final to = this.end;
//     final strFrom = "${from.day}/${from.month}/${from.year}";
//     final strTo = "${to.day}/${to.month}/${to.year}";
//     return '$strFrom to $strTo';
//   }
// }

// Map<String, RosterEntry> createRosterEntries() {
//   Map<String, RosterEntry> rosterEntries = {};

//   for (var day in DayType.values) {
//     for (var shift in ShiftType.values) {
//       String key = randomID;
//       rosterEntries[key] = RosterEntry(
//         rosterEntryID: key,
//         dayType: day,
//         shiftType: shift,
//         medicalOfficerIDs: [],
//       );
//     }
//   }

//   return rosterEntries;
// }
