// import 'package:states_rebuilder/states_rebuilder.dart';

// import 'package:roster_system/features/roster/roster.dart';

// final rosterManager = RosterManager();

// class RosterManager {
//   final rosterRM = RM.inject(
//     () => Roster(),
//   );

//   Roster get roster => rosterRM.state;
//   set roster(Roster _) => rosterRM.state = _;

//   List<RosterEntry> get listOfRosterEntries =>
//       roster.rosterEntries.values.toList();
//   void setRosterEntry(RosterEntry rosterEntry) {
//     roster = roster.copyWith(
//       rosterEntries: Map.of(roster.rosterEntries)
//         ..[rosterEntry.rosterEntryID] = rosterEntry,
//     );
//   }
// }
