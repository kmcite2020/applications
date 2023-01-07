// // ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable

// import 'dart:async';

// import 'package:dashboard/core/reactiveModels.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import 'riverpod.dart';

// class TestScreen extends HookConsumerWidget {
//   TestScreen({required this.chapter, super.key});
//   final Chapter chapter;
//   final isStarted = false.inj();
//   @override
//   void didMountWidget(BuildContext context) {
//     super.didMountWidget(context);
//     print('test screen');
//   }

//   @override
//   Widget build(BuildContext context, ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           chapter.name,
//         ),
//       ),
//       body: ListView(
//         children: [
//           Center(child: Text(chapter.numberOfQuestions.toString(), textScaleFactor: 10)),
//           Padding(
//             padding: EdgeInsets.all(padding),
//             child: chapter.numberOfQuestions == 0
//                 ? Text('No questions available to start the test')
//                 : ElevatedButton(
//                     onPressed: () {
//                       // isStarted.toggle();
//                       RM.navigate.toAndRemoveUntil(TestStarted(chapter: chapter));
//                     },
//                     child: Text(
//                       'START TEST',
//                     ),
//                   ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class TestStarted extends ReactiveStatelessWidget {
//   TestStarted({required this.chapter, this.totalTime, super.key});
//   final Chapter chapter;
//   final int? totalTime;
//   @override
//   void didMountWidget(BuildContext context) {
//     super.didMountWidget(context);
//     print('test started');
//     totalTimeRM.state = totalTime ?? 60;
//     startTimer();
//   }

//   @override
//   void didUnmountWidget() {
//     super.didUnmountWidget();
//     timer.cancel();
//   }

//   late Timer timer;
//   final totalTimeRM = 60.inj();
//   set time(int _) {
//     totalTimeRM.state = _;
//   }

//   int get time => totalTimeRM.state;

//   int maxTime = 1;

//   void startTimer() {
//     timer = Timer.periodic(
//       500.milliseconds,
//       (timer) {
//         if (time < 1) {
//           timer.cancel();
//           RM.navigate.toAndRemoveUntil(TestEnded());
//         } else {
//           time--;
//         }
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(chapter.name),
//       ),
//       body: Column(
//         // shrinkWrap: true,
//         children: [
//           buildProgressBar(),
//           Expanded(
//             child: PageView.builder(
//               onPageChanged: (val) {},
//               itemCount: getNumberOfQuestionsOfChapters(chapter),
//               itemBuilder: (context, index) {
//                 final eachQuestion = getQuestionsOfChapters(chapter)[index];
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(padding),
//                       padding: EdgeInsets.all(padding),
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), border: Border.all()),
//                       child: Text(eachQuestion.questionName, textScaleFactor: 1.5),
//                     ),
//                     ...eachQuestion.allOptions.map(
//                       (eachOption) => Padding(
//                         padding: EdgeInsets.all(padding),
//                         child: RadioListTile(
//                           value: eachOption,
//                           title: Text(eachOption),
//                           groupValue: eachOption,
//                           onChanged: (value) {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Stack buildProgressBar() {
//     return Stack(
//       alignment: AlignmentDirectional.center,
//       children: [
//         Padding(
//           padding: EdgeInsets.all(padding),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(borderRadius),
//             child: LinearProgressIndicator(value: time / 60, minHeight: 40),
//           ),
//         ),
//         Text('$time', textScaleFactor: 2)
//       ],
//     );
//   }
// }

// class TestEnded extends ReactiveStatelessWidget {
//   const TestEnded({super.key});
//   @override
//   void didMountWidget(BuildContext context) {
//     super.didMountWidget(context);
//     print('test screen');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text(
//           'Test Complete',
//           textScaleFactor: 4,
//         ),
//       ),
//     );
//   }
// }
