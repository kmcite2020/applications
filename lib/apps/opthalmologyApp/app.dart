// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';
// import 'riverpod.dart';
// import 'test_screen.dart';

// class OpthalmologyMCQsApp extends HookConsumerWidget {
//   const OpthalmologyMCQsApp({super.key});

//   @override
//   Widget build(BuildContext context, ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Ophthalmology MCQs",
//         ),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: Container(
//               padding: EdgeInsets.all(padding),
//               decoration: BoxDecoration(
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(borderRadius),
//               ),
//               child: Column(
//                 children: [
//                   const Text("CHAPTERS", textScaleFactor: 3),
//                   Text(
//                     "total questions ${questions.length}",
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           for (final eachSection in Chapter.values)
//             Container(
//               height: 70,
//               margin: EdgeInsets.all(padding),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), border: Border.all()),
//               // padding: EdgeInsets.all(padding),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(borderRadius),
//                 onTap: () {
//                   RM.navigate.to(TestScreen(chapter: eachSection));
//                 },
//                 child: Padding(
//                   padding: EdgeInsets.all(padding),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(padding),
//                         child: Text(eachSection.name, textScaleFactor: 1.4),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(padding),
//                         child: Text("${eachSection.numberOfQuestions}", textScaleFactor: 2),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
