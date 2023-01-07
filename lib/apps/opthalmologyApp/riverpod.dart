// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// final questionsRM = RM.inject<List<Question>>(
//   () => <Question>[],
//   persist: () => PersistState(
//     key: 'questions',
//     toJson: (s) => Question.toListJson(s),
//     fromJson: (json) => Question.fromListJson(json),
//   ),
// );

// int getNumberOfQuestionsOfChapters(Chapter chapter) {
//   return questions.where(
//     (element) {
//       if (element.chapter == chapter) {
//         return true;
//       } else {
//         return false;
//       }
//     },
//   ).length;
// }

// int get numberOfQuestions => questions.length;

// List<Question> getQuestionsOfChapters(Chapter chapter) {
//   return questions.where(
//     (element) {
//       if (element.chapter == chapter) {
//         return true;
//       } else {
//         return false;
//       }
//     },
//   ).toList();
// }

// class Question extends Equatable {
//   final String questionName;
//   final Chapter chapter;
//   final List<String> options;
//   final int correctOptionIndex;
//   const Question({
//     required this.questionName,
//     required this.chapter,
//     required this.options,
//     required this.correctOptionIndex,
//   });

//   @override
//   List<Object> get props => [questionName, chapter, options, correctOptionIndex];
//   List<String> get allOptions => [for (final each in options) each]..shuffle();

//   Question copyWith({
//     String? questionName,
//     Chapter? chapter,
//     List<String>? options,
//     int? correctOptionIndex,
//   }) {
//     return Question(
//       questionName: questionName ?? this.questionName,
//       chapter: chapter ?? this.chapter,
//       options: options ?? this.options,
//       correctOptionIndex: correctOptionIndex ?? this.correctOptionIndex,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'questionName': questionName,
//       'chapter': Chapter.values.indexOf(chapter),
//       'options': options,
//       'correctOptionIndex': correctOptionIndex,
//     };
//   }

//   factory Question.fromMap(Map<String, dynamic> map) {
//     return Question(
//       questionName: map['questionName'] as String,
//       chapter: Chapter.values[map['chapter']],
//       options: List<String>.from((map['options'])),
//       correctOptionIndex: map['correctOptionIndex'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Question.fromJson(String source) => Question.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;
//   static List<Question> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => Question.fromJson(e)).toList();
//   }

//   static String toListJson(List<Question> counters) {
//     final List result = counters.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }
// }

// enum Chapter {
//   orbit("Orbit & Oculoplasty"),
//   catarct("Cataracts"),
//   refraction("Refractive Surgery"),
//   cornea("Cornea"),
//   glaucoma("Glaucoma"),
//   uveitis("Uveitis"),
//   retina("Retina"),
//   neurology("Neuro-Opthalmology"),
//   peds("Pediatric Opthalmology");

//   const Chapter(this.name);
//   final String name;
//   int get numberOfQuestions => getNumberOfQuestionsOfChapters(Chapter.values[index]);
// }

// List<Question> get questions => questionsRM.state;
// set question(value) => questionsRM.state = value;
