// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, unused_import, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// import 'package:collection/collection.dart';
// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../core/reactiveModels.dart';
// import '../floater.dart';
// import '../settings/settings.dart';
// import '../settings/user_information.dart';
// import '../core.dart';

// final isDevMode = RM.injectFormField<bool>(true);
// bool get dev => isDevMode.value;

// class Home extends ReactiveStatelessWidget {
//   static open(context) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//   }

//   @override
//   Widget build(context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Beseech'),
//             IconButton(
//               onPressed: () {
//                 RM.navigate.to(Settings());
//               },
//               icon: Icon(Icons.settings),
//             )
//           ],
//         ),
//         actions: [
//           AppSelectorToggle(),
//         ],
//       ),
//       body: ListView(
//         children: [
//           PrayerCounterWidget(name: 'Fajr', count: fajrRM),
//           PrayerCounterWidget(name: 'Zuhr', count: zuhrRM),
//           PrayerCounterWidget(name: 'Asar', count: asarRM),
//           PrayerCounterWidget(name: 'Maghrib', count: maghribRM),
//           PrayerCounterWidget(name: 'Isha', count: ishaRM),
//           RemainingPrayers(),
//         ],
//       ),
//     );
//   }
// }

// class RemainingPrayers extends StatelessWidget {
//   const RemainingPrayers({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text(
//               'REMAINING PRAYERS',
//               textScaleFactor: 2,
//             ),
//             Text(
//               '${sumOfAllPrayers}',
//               textScaleFactor: 5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PrayerCounterWidget extends ReactiveStatelessWidget {
//   final String name;
//   final Injected<int> count;

//   PrayerCounterWidget({
//     required this.name,
//     required this.count,
//   });
//   final show = false.inj(autoDisposeWhenNotUsed: false);
//   final text = RM.injectTextEditing();
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: () {
//         show.toggle();
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: Text(name, textScaleFactor: 1.2),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: show.state
//                     ? Column(
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               count.state = int.parse(text.value);
//                               show.toggle();
//                             },
//                             icon: Icon(Icons.done),
//                           ),
//                           IconButton(
//                             onPressed: () => show.toggle(),
//                             icon: Icon(Icons.cancel),
//                           ),
//                         ],
//                       )
//                     : Container(
//                         decoration: BoxDecoration(
//                           color: color.shade200,
//                           borderRadius: BorderRadius.circular(
//                             10,
//                           ),
//                         ),
//                         padding: EdgeInsets.all(padding),
//                         child: Column(
//                           children: [
//                             IconButton(
//                               onPressed: () => count.state++,
//                               icon: Icon(
//                                 Icons.add,
//                                 size: 30,
//                               ),
//                             ),
//                             IconButton(
//                               onPressed: count.state > 0
//                                   ? () {
//                                       if (count.state > 0) {
//                                         count.state--;
//                                       } else {}
//                                     }
//                                   : null,
//                               icon: Icon(
//                                 Icons.remove,
//                                 size: 30,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//               )
//             ],
//           ),
//           show.state
//               ? Padding(
//                   padding: EdgeInsets.all(padding),
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     controller: text.controller,
//                     focusNode: text.focusNode,
//                   ),
//                 )
//               : ListTile(
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'REMAINING PRAYERS',
//                         textScaleFactor: 1,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(padding),
//                         child: Text(
//                           count.state.toString(),
//                           textScaleFactor: 2,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ],
//       ),
//     );
//   }
// }
