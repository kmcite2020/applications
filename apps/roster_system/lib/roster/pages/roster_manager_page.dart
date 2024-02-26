// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:roster_system/features/roster/components/roster_builder.dart';

// import '../../../main.dart';
// import '../../rosters/rosters.dart';

// class RosterEditPage extends UI {
//   const RosterEditPage({
//     required this.rosterID,
//   });
//   final String rosterID;
//   @override
//   Widget build(BuildContext context) {
//     return RosterBuilder(
//       rosterID: rosterID,
//       builder: (Roster roster) {
//         return Scaffold(
//           appBar: AppBar(
//             title: roster.name.text(),
//           ),
//           body: ListView(
//             children: [
//               'Effective Dates'.text(),
//               'FROM'.text(),
//               roster.withEffectFromTo.start.human(),
//               ElevatedButton(
//                 onPressed: () async {
//                   final start = await showDatePicker(
//                     context: context,
//                     firstDate: roster.withEffectFromTo.start
//                         .subtract(Duration(days: 30)),
//                     lastDate: DateTime.now().add(Duration(days: 30)),
//                   );
//                   if (start != null)
//                     setRoster(
//                       roster.copyWith(
//                         withEffectFromTo: DateTimeRange(
//                           start: start,
//                           end: roster.withEffectFromTo.end,
//                         ),
//                       ),
//                     );
//                 },
//                 child: 'Update'.text(),
//               ),
//               'TO'.text(),
//               roster.withEffectFromTo.end.human(),
//               ElevatedButton(
//                 onPressed: () async {
//                   final end = await showDatePicker(
//                     context: context,
//                     firstDate: roster.withEffectFromTo.start
//                         .subtract(Duration(days: 30)),
//                     lastDate: DateTime.now().add(Duration(days: 30)),
//                   );
//                   if (end == null) return;
//                   setRoster(
//                     roster.copyWith(
//                       withEffectFromTo: DateTimeRange(
//                         start: roster.withEffectFromTo.start,
//                         end: end,
//                       ),
//                     ),
//                   );
//                 },
//                 child: 'Update'.text(),
//               ),
//               TextFormField(
//                 initialValue: roster.signedBy,
//                 onChanged: (value) {
//                   setRoster(
//                     roster.copyWith(signedBy: value),
//                   );
//                 },
//               ).pad(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
