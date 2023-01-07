// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:dashboard/apps/opthalmologyApp/riverpod.dart';
// import 'package:dashboard/core/reactiveModels.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// class MCQsManager extends ReactiveStatelessWidget {
//   const MCQsManager({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("MCQs Manager"),
//       ),
//       body: OnFormBuilder(
//         listenTo: addQuestionForm,
//         builder: () {
//           return ListView(
//             children: [
//               Divider(),
//               Center(
//                 child: Text(
//                   '${questionsRM.state.length}',
//                   textScaleFactor: 3,
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: questionController.controller,
//                   focusNode: questionController.focusNode,
//                   decoration: InputDecoration(
//                     labelText: "Question",
//                     errorText: questionController.error,
//                   ),
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder(
//                   listenTo: chapterField,
//                   builder: (value, onChanged) => DropdownButtonFormField(
//                       value: value,
//                       items: Chapter.values
//                           .map(
//                             (e) => DropdownMenuItem(value: e, child: Text(e.name)),
//                           )
//                           .toList(),
//                       onChanged: onChanged),
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: optionA.controller,
//                   decoration: InputDecoration(
//                     labelText: "Option A",
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: optionB.controller,
//                   decoration: InputDecoration(
//                     labelText: "Option B",
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: optionC.controller,
//                   decoration: InputDecoration(
//                     labelText: "Option C",
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: optionD.controller,
//                   decoration: InputDecoration(
//                     labelText: "Option D",
//                   ),
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder(
//                   listenTo: correctOptionField,
//                   builder: (value, onChanged) => DropdownButtonFormField(
//                       value: value,
//                       items: [0, 1, 2, 3]
//                           .map(
//                             (e) => DropdownMenuItem(
//                               value: e,
//                               child: Text(e.toString()),
//                             ),
//                           )
//                           .toList(),
//                       onChanged: onChanged),
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: addQuestionForm.isWaiting
//                     ? Center(child: CircularProgressIndicator())
//                     : ElevatedButton(
//                         onPressed: () {
//                           addQuestionForm.submit();
//                         },
//                         child: Text(
//                           'Add Question',
//                         ),
//                       ),
//               ),
//               Divider(),
//               for (final Question eachQuestion in questionsRM.state) Text(eachQuestion.questionName)
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// final addQuestionForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     await Future.delayed(1.seconds);
//     questionsRM.state = [
//       ...questionsRM.state,
//       Question(
//         questionName: questionController.value,
//         chapter: chapterField.value,
//         options: [optionA.value, optionB.value, optionC.value, optionD.value],
//         correctOptionIndex: correctOptionField.value,
//       )
//     ];
//   },
// );

// final questionController = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (!text!.contains('?')) {
//         return "Should contain question";
//       } else {
//         if (text.length < 20) {
//           return "Should contain at least 20 characters.";
//         } else {
//           return null;
//         }
//       }
//     },
//   ],
// );
// final chapterField = RM.injectFormField<Chapter>(Chapter.catarct);
// final optionA = RM.injectTextEditing();
// final optionB = RM.injectTextEditing();
// final optionC = RM.injectTextEditing();
// final optionD = RM.injectTextEditing();

// final correctOptionField = RM.injectFormField<int>(0);
