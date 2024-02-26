// import 'dart:convert';
// import 'package:roster_system/features/roster/roster.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// final medicalOfficersManager = MedicalOfficersManager();

// class MedicalOfficersManager {
//   final medicalOfficersRM = RM.inject(
//     () => MedicalOfficers(),
//     persist: () => PersistState(
//       key: 'medicalOfficers',
//       toJson: (s) => jsonEncode(s),
//       fromJson: (json) => MedicalOfficers.fromJson(jsonDecode(json)),
//     ),
//   );

//   MedicalOfficers get state => medicalOfficersRM.state;
//   set state(MedicalOfficers _) => medicalOfficersRM.state = _;

//   void addMedicalOfficer(MedicalOfficer medicalOfficer) {
//     state = state.copyWith(
//       cache: Map.of(state.cache)..[medicalOfficer.id] = medicalOfficer,
//     );
//   }

//   void removeMedicalOfficer(MedicalOfficer medicalOfficer) {
//     state = state.copyWith(
//       cache: Map.of(state.cache)..remove(medicalOfficer.id),
//     );
//   }
// }
