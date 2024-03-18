import 'package:opthalmology/features/quizzes/quizzes_bloc.dart';

import '../../main.dart';

class QuizzesPage extends UI {
  const QuizzesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Quizzes Available'.text(),
      ),
      body: ListView.builder(
        itemCount: quizzesBloc.quizzes.length,
        itemBuilder: (context, index) {
          return quizzesBloc.quizzes[index].text();
        },
      ),
    );
  }
}

class TakeQuizPage extends ReactiveStatelessWidget {
  const TakeQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    final quizID = context.routeData.arguments;
    final quiz = Quiz.fromID(quizID);
    final questions = quiz?.questions;
    return Scaffold(
      appBar: AppBar(
        title: 'Quiz - Type'.text(),
      ),
      body: QuizQuestionUI(questions: questions),
    );
  }
}

class QuizQuestionUI extends StatelessWidget {
  const QuizQuestionUI({super.key, this.questions});
  final List<Question>? questions;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: questions?.length,
      itemBuilder: (context, index) {
        final question = questions?[index];

        return ListTile(
          title: question.text(),
        );
      },
    );
  }
}

class TakeQuizBloc {
  void attemptQuiz() {}
  void attemptQuestion() {}
}

class QuizResult {
  bool? isPassed;
  int? correct;
  int? inCorrect;
}
