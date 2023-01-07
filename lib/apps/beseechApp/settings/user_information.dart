// // ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, sort_child_properties_last, no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps, unused_element, prefer_const_constructors

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../core/reactiveModels.dart';
// import '../core.dart';

// final _currentDateTime = RM.inject<DateTime>(() => DateTime.now());
// Duration get age => _currentDateTime.state.difference(birth.state);

// class UserInformation extends StatelessWidget {
//   const UserInformation({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Center(child: Text("USER INFORMATIONS")),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Divider(),
//           Text('NAME'),
//           InlineEditor(
//             data: username.state,
//             persistKey: 'username',
//             persistState: 'usernameState',
//           ),
//           Divider(),
//           Text('DATE OF BIRTH - date of your coming to creation'),
//           DateManger(
//             name: 'birth',
//             store: 'settings',
//             persistKey: 'birth',
//             date: birth,
//           ),
//           Divider(),
//           Text('DATE OF PUBERTY - became adult on'),
//           DateManger(
//             name: 'puberty',
//             date: puberty,
//             persistKey: 'puberty',
//           ),
//           Divider(),
//           Text(
//             'ALL MISSING PRAYERS - will implement',
//             softWrap: true,
//           ),
//           Divider(),
//           Life()
//         ],
//       ),
//     );
//   }
// }

// class Life extends StatelessWidget {
//   const Life({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('LIFE - age'),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inDays ~/ (30 * 12)} YEARS',
//             textScaleFactor: 1.4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inDays ~/ 30} MONTHS',
//             textScaleFactor: 1.4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inDays} DAYS',
//             textScaleFactor: 1.4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inHours} HOURS',
//             textScaleFactor: 1.4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inMinutes} MINUTES',
//             textScaleFactor: 1.4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${age.inSeconds} SECONDS',
//             textScaleFactor: 1.4,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class DateManger extends ReactiveStatelessWidget {
//   final Injected<dynamic> date;
//   final String persistKey;
//   final String store;
//   final show = false.inj(autoDisposeWhenNotUsed: false);
//   final String name;
//   DateManger({required this.name, this.store = 'settings', required this.persistKey, required this.date});
//   @override
//   Widget build(BuildContext context) {
//     return show.state
//         ? Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                       "${date.state().day.toString().length == 1 ? '0' : ''}${date.state().day}/${date.state().month.toString().length == 1 ? '0' : ''}${date.state().month}/${date.state().year}"),
//                 ),
//               ),
//               Row(
//                 children: [
//                   InkWell(
//                     highlightColor: colors[Random().nextInt(colors.length)],
//                     focusColor: color,
//                     splashColor: color,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(20),
//                     ),
//                     onTap: () async {
//                       date.state = await showDatePicker(
//                         initialEntryMode: DatePickerEntryMode.calendar,
//                         context: context,
//                         initialDate: date.state(),
//                         firstDate: DateTime(1950),
//                         lastDate: DateTime(2050),
//                       ) as DateTime;
//                       // print(date.state.toString());
//                       // await Hive.box(store).put(persistKey, date.state);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(Icons.edit),
//                     ),
//                   ),
//                   InkWell(
//                     highlightColor: colors[Random().nextInt(colors.length)],
//                     focusColor: color,
//                     splashColor: color,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(20),
//                     ),
//                     onTap: () {
//                       show.state = false;
//                       print(birth.state);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(Icons.visibility_off),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )
//         : Card(
//             shape: StadiumBorder(),
//             child: InkWell(
//               highlightColor: colors[Random().nextInt(colors.length)],
//               focusColor: color,
//               splashColor: color,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(20),
//               ),
//               onTap: () => show.toggle(),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(Icons.visibility),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text('Show'),
//                       )
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       '${DateTime.now().difference(date.state()).inDays ~/ 365} years',
//                       softWrap: true,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//   }
// }

// class InlineEditor extends ReactiveStatelessWidget {
//   InlineEditor({required this.data, required this.persistKey, required this.persistState});
//   String data;
//   String persistKey;
//   String persistState;
//   final controller = TextEditingController();
//   final edit = RM.inject(() => false, debugPrintWhenNotifiedPreMessage: 'userNameState', autoDisposeWhenNotUsed: false);
//   @override
//   Widget build(BuildContext context) {
//     controller.text = data;

//     return edit.state
//         ? Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   textAlign: TextAlign.center,
//                   cursorColor: color,
//                   controller: controller,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                 ),
//               ),
//               Column(
//                 children: [
//                   SizedBox(height: 3),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: InkWell(
//                           hoverColor: Colors.red,
//                           highlightColor: colors[Random().nextInt(colors.length)],
//                           focusColor: color,
//                           splashColor: color,
//                           borderRadius: BorderRadius.circular(20),
//                           onTap: () {
//                             edit.state = false;
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(5.0),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.cancel),
//                                 Text('CANCEL'),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: InkWell(
//                           highlightColor: colors[Random().nextInt(colors.length)],
//                           hoverColor: colors[Random().nextInt(colors.length)],
//                           focusColor: color,
//                           splashColor: color,
//                           borderRadius: BorderRadius.circular(20),
//                           onTap: () {
//                             edit.state = false;
//                             data = controller.text;
//                             print('$data saved');
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(5.0),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.done),
//                                 Text('DONE'),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           )
//         : Row(
//             children: [
//               Expanded(
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(20),
//                   focusColor: color,
//                   splashColor: color,
//                   onTap: () {
//                     edit.state = true;
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Text(
//                         data,
//                         textScaleFactor: 1.4,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//   }
// }
