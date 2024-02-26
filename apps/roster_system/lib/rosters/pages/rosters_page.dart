// import 'package:roster_system/features/roster/components/roster_builder.dart';
// import 'package:roster_system/features/roster/pages/roster_manager_page.dart';
// import 'package:roster_system/features/rosters/rosters.dart';

// import '../../../main.dart';

// class RostersPage extends UI {
//   const RostersPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Rosters'.text(),
//         actions: [
//           IconButton(
//             onPressed: () {
//               setRoster(Roster());
//             },
//             icon: Icon(Icons.add),
//           )
//         ],
//       ),
//       body: MapBuilder(
//         map: rosters.cache,
//         builder: (_, rosters) {
//           return ListView.builder(
//             itemCount: rosters.length,
//             itemBuilder: (context, index) {
//               final roster = rosters[index];
//               return RosterTile(rosterID: roster.rosterID);
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class RosterTile extends StatelessWidget {
//   const RosterTile({super.key, required this.rosterID});

//   final String rosterID;

//   @override
//   Widget build(BuildContext context) {
//     return RosterBuilder(
//       rosterID: rosterID,
//       builder: (roster) {
//         return ListTile(
//           title: TextFormField(
//             initialValue: roster.name,
//             onChanged: (value) {
//               setRoster(
//                 roster.copyWith(name: value),
//               );
//             },
//           ),
//           subtitle: Column(
//             children: [
//               roster.text(),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       RM.navigate.to(RosterReadPage(rosterID: rosterID));
//                     },
//                     icon: Icon(Icons.view_timeline),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       RM.navigate.to(RosterEditPage(rosterID: rosterID));
//                     },
//                     icon: Icon(Icons.edit),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class MapBuilder<K, V> extends UI {
//   final Map<K, V> map;
//   final Widget Function(
//     List<K> keys,
//     List<V> values,
//   ) builder;
//   MapBuilder({
//     required this.map,
//     required this.builder,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return builder(
//       map.keys.toList(),
//       map.values.toList(),
//     );
//   }
// }
