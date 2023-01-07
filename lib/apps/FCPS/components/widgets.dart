// // ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../core.dart';

// class Statistics extends ReactiveStatelessWidget {
//   const Statistics({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 250,
//       child: Card(
//         borderOnForeground: false,
//         color: Color(
//           Random().nextInt(1 << 32),
//         ),
//         child: ListTile(
//           onTap: () {},
//           title: Center(
//             child: Text(Random().nextInt(1 << 32).toString()),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CardTile extends ReactiveStatelessWidget {
//   CardTile(
//       {this.title,
//       this.leading,
//       this.onLongTap,
//       this.onTap,
//       this.subtitle,
//       this.trailing});

//   Widget? title, subtitle, leading, trailing;
//   void Function()? onTap, onLongTap;

//   @override
//   Widget build(BuildContext context) => Card(
//       child: ListTile(
//           onLongPress: onLongTap,
//           leading: leading,
//           trailing: trailing,
//           onTap: onTap,
//           title: title,
//           subtitle: subtitle));
// }

// // class Dropdown extends StatefulWidget {
// //   const Dropdown({
// //     Key? key,
// //   }) : super(key: key);
// //
// //   @override
// //   State<Dropdown> createState() => _DropdownState();
// // }
// //
// // class _DropdownState extends State<Dropdown> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return DropdownButtonFormField(
// //       decoration: InputDecoration(border: OutlineInputBorder()),
// //       value: subscription,
// //       items: subscriptions
// //           .map(
// //             (String? e) => DropdownMenuItem(
// //               value: e,
// //               child: Text(e.toString()),
// //             ),
// //           )
// //           .toList(),
// //       onChanged: (value) {
// //         setState(() {
// //           buySubscription(value);
// //         });
// //       },
// //     );
// //   }
// // }

// class InlineEditor extends StatefulWidget {
//   InlineEditor({
//     required this.value,
//     required this.title,
//   });

//   String value;
//   String title;

//   @override
//   State<InlineEditor> createState() => _InlineEditorState();
// }

// class _InlineEditorState extends State<InlineEditor> {
//   bool edit = false;
//   var controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) => edit
//       ? Column(
//           children: [
//             Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: controller,
//                   decoration: InputDecoration(
//                     // contentPadding: EdgeInsets.all(0),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               color: Colors.transparent,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     widget.title,
//                     textScaleFactor: 1.2,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () => setState(() => edit = false),
//                         icon: Icon(Icons.arrow_back),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             widget.value = controller.text;
//                             edit = false;
//                           });
//                         },
//                         icon: Icon(Icons.done),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         )
//       : CardTile(
//           title: Text(widget.title),
//           subtitle: Text(widget.value),
//           onTap: () {
//             setState(() {
//               controller.text = widget.value;
//               edit = true;
//             });
//           },
//         );
// }

// class CitiesEditor extends StatefulWidget {
//   const CitiesEditor({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<CitiesEditor> createState() => _CitiesEditorState();
// }

// class _CitiesEditorState extends State<CitiesEditor> {
//   bool edit = false;

//   @override
//   Widget build(BuildContext context) {
//     return !edit
//         ? CardTile(
//             title: Text('CITY'),
//             subtitle: Text(selectedCity.toString()),
//             onTap: () => setState(() => edit = true),
//           )
//         : Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: DropdownButtonFormField<String>(
//               hint: Text('CITY'),
//               decoration: InputDecoration(border: OutlineInputBorder()),
//               value: selectedCity,
//               items: listOfCities
//                   .map(
//                     (e) => DropdownMenuItem<String>(
//                       value: e,
//                       child: Text(e),
//                     ),
//                   )
//                   .toList(),
//               onChanged: (value) {
//                 selectedCity = value;
//                 setState(() => edit = false);
//               },
//             ),
//           );
//   }
// }
