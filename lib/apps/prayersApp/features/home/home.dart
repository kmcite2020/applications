// // ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../../core/apps.dart';
// import '../prayers/prayers.dart';
// import '../settings/settings.dart';

// class Home extends ReactiveStatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       endDrawer: Settings(),
//       appBar: AppBar(
//         leading: AppSelectorToggle(),
//         title: Text('Homepage'),
//       ),
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             if (dailyPrayersRM.isWaiting)
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(80),
//                   child: CircularProgressIndicator(),
//                 ),
//               )
//             else
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       HeadersWidget("date", size: size),
//                       HeadersWidget("fajr", size: size),
//                       HeadersWidget("zuhr", size: size),
//                       HeadersWidget("asar", size: size),
//                       HeadersWidget("maghrib", size: size),
//                       HeadersWidget("isha", size: size),
//                     ],
//                   ),
//                   ListView.builder(
//                     physics: BouncingScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: 10
//                     //  dailyPrayers.take(10).length,
//                     ,
//                     itemBuilder: (_, i) {
//                       final eachPrayer = [i];
//                       return Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: size.width / 6,
//                             decoration: BoxDecoration(
//                               color: Theme.of(context).backgroundColor,
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(),
//                             ),
//                             child: Align(
//                               child: Text(
//                                 i.toString(),
//                               ),
//                             ),
//                           ),
//                           // TogglePrayerWidget(size: size, value: eachPrayer.fajr),
//                           // TogglePrayerWidget(size: size, value: eachPrayer.zuhr),
//                           // TogglePrayerWidget(size: size, value: eachPrayer.asar),
//                           // TogglePrayerWidget(size: size, value: eachPrayer.maghrib),
//                           // TogglePrayerWidget(size: size, value: eachPrayer.isha),
//                         ],
//                       );
//                     },
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HeadersWidget extends StatelessWidget {
//   const HeadersWidget(
//     this.value, {
//     Key? key,
//     required this.size,
//   }) : super(key: key);
//   final String value;
//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size.width / 6,
//       decoration: BoxDecoration(
//         color: Theme.of(context).backgroundColor,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(),
//       ),
//       child: Column(
//         children: [
//           Align(
//             child: Text(value),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TogglePrayerWidget extends StatefulWidget {
//   TogglePrayerWidget({
//     Key? key,
//     required this.size,
//     required this.value,
//   }) : super(key: key);

//   final Size size;
//   bool value;

//   @override
//   State<TogglePrayerWidget> createState() => _TogglePrayerWidgetState();
// }

// class _TogglePrayerWidgetState extends State<TogglePrayerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.size.width / 6,
//       decoration: BoxDecoration(
//         color: Theme.of(context).backgroundColor,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(),
//       ),
//       child: IconButton(
//         onPressed: () => setState(
//           () => widget.value = !widget.value,
//         ),
//         icon: Icon(
//           widget.value ? Icons.done : Icons.cancel,
//         ),
//       ),
//     );
//   }
// }
