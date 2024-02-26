// import '../../main.dart';

// part 'rosters.freezed.dart';
// part 'rosters.g.dart';

// @freezed
// class Rosters with _$Rosters {
//   const factory Rosters({
//     @Default(<String, Roster>{}) final Map<String, Roster> cache,
//   }) = _Rosters;

//   factory Rosters.fromJson(Map<String, dynamic> json) =>
//       _$RostersFromJson(json);

//   const Rosters._();

//   Rosters call([Rosters? _rosters]) =>
//       _rosters != null ? rosters = _rosters : rosters;
// }

// Rosters get rosters => rostersRM.state;
// set rosters(Rosters _) => rostersRM.state = _;

// final rostersRM = RM.inject(
//   () => Rosters(),
//   persist: () => PersistState(
//     key: 'rosters',
//     toJson: (s) => jsonEncode(s.toJson()),
//     fromJson: (json) => Rosters.fromJson(jsonDecode(json)),
//   ),
// );

// void setRoster(Roster roster) {
//   rosters(
//     rosters.copyWith(
//       cache: Map.of(rosters.cache)..[roster.rosterID] = roster,
//     ),
//   );
// }

// void removeRoster(Roster roster) {
//   rosters(
//     rosters.copyWith(
//       cache: Map.of(rosters.cache)..remove(roster.rosterID),
//     ),
//   );
// }

// Roster rosterFromID(String rosterID) => rostersRM.state.cache[rosterID]!;
