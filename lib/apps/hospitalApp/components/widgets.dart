// // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings, unused_import, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_literals_to_create_immutables

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../hospitalApp.dart';
// import '../core/core.dart';

// class InlineSlider extends StatefulWidget {
//   InlineSlider({
//     this.min = 0,
//     this.max = 50,
//     this.title = '',
//     required this.value,
//   });
//   final String title;
//   double value;
//   final double min;
//   final double max;
//   bool edit = false;
//   @override
//   State<InlineSlider> createState() => _InlineSliderState();
// }

// class _InlineSliderState extends State<InlineSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         widget.edit
//             ? Padding(
//                 padding: EdgeInsets.all(8),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [Text(widget.title), Text3(widget.value.toInt().toString())],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Expanded(
//                           child: Slider(
//                             label: widget.value.toInt().toString(),
//                             divisions: 100,
//                             min: widget.min,
//                             max: widget.max,
//                             value: widget.value,
//                             onChanged: (val) => setState(() {
//                               if (val <= widget.min) {
//                                 log('$val can not be set.');
//                               } else {
//                                 widget.value = val;
//                               }
//                             }),
//                           ),
//                         ),
//                         IconButton(onPressed: () => setState(() => widget.edit = false), icon: Icon(Icons.done))
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             : ListTile(
//                 onTap: () => setState(() => widget.edit = true),
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text3(widget.title),
//                     Text3(
//                       widget.value.toInt().toString(),
//                       size: 18,
//                     ),
//                   ],
//                 ),
//                 // subtitle: subtitle,
//                 // trailing: trailing,
//               ),
//       ],
//     );
//   }
// }

// class InLineEditor extends ReactiveStatelessWidget {
//   InLineEditor(
//       {Key? key,
//       required this.injectedTextEditing,
//       this.title,
//       this.validator,
//       this.info,
//       this.valueSetter,
//       this.textEditorIcon,
//       this.textInputType,
//       this.trailing,
//       this.maxLines})
//       : super(key: key);
//   final InjectedTextEditing injectedTextEditing;
//   final int? maxLines;
//   final Widget? title;
//   final Widget? info;
//   final Function()? valueSetter;
//   final String? Function(String?)? validator;
//   final Widget? textEditorIcon;
//   final TextInputType? textInputType;
//   final Widget? trailing;
//   final edit = false.inj();
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           edit.state
//               ? Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextFormField(
//                     autovalidateMode: AutovalidateMode.always,
//                     controller: injectedTextEditing.controller,
//                     maxLines: maxLines,
//                     autofocus: true,
//                   ),
//                 )
//               : ListTile(
//                   onTap: () => edit.state = true,
//                   title: title,
//                   subtitle: info,
//                   trailing: trailing,
//                 ),
//           edit.state
//               ? Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       IconButton(
//                         onPressed: valueSetter,
//                         icon: Icon(Icons.done_outline),
//                       ),
//                       SizedBox(
//                         width: 4,
//                       ),
//                       IconButton(
//                         onPressed: () => edit.state = false,
//                         icon: Icon(Icons.cancel_outlined),
//                       ),
//                     ],
//                   ),
//                 )
//               : SizedBox()
//         ],
//       ),
//     );
//   }
// }

// class CardTile extends StatelessWidget {
//   const CardTile({
//     Key? key,
//     this.title,
//     this.description,
//     this.color,
//     this.onTap,
//     this.trailing,
//     this.onLongPress,
//     this.leading,
//   }) : super(key: key);
//   final Widget? title;
//   final Widget? description;
//   final color;
//   final VoidCallback? onTap;
//   final VoidCallback? onLongPress;
//   final Widget? trailing;
//   final Widget? leading;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0.2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       color: color,
//       child: ListTile(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         leading: leading,
//         onLongPress: onLongPress,
//         title: title,
//         subtitle: description,
//         trailing: trailing,
//         onTap: onTap,
//       ),
//     );
//   }
// }

// class BackButton2 extends StatelessWidget {
//   const BackButton2({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(
//       heroTag: Uuid().v4(),
//       label: Text3('Back'),
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
// }

// class Text2 extends StatelessWidget {
//   final String? text;
//   final double? size;
//   final color;
//   Text2(this.text, {this.size = 18, this.color, Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         color: color, child: Padding(padding: const EdgeInsets.all(8.0), child: Text(text.toString(), style: TextStyle(fontSize: size))));
//   }
// }

// class Text3 extends StatelessWidget {
//   final String? text;
//   final double? size;
//   Text3(this.text, {this.size, Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Text(text.toString(), style: TextStyle(fontSize: size));
//   }
// }
