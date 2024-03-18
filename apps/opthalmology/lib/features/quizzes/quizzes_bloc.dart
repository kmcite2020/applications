import '../../main.dart';

final QuizzesBloc quizzesBloc = QuizzesBloc();

class QuizzesBloc {
  final quizzesRM = RM.inject(
    () => <Quiz>[],
    initialState: <Quiz>[],
  );
  List<Quiz> get quizzes => quizzesRM.state;

  void addQuiz(Quiz quiz) {
    // quizzesRepository.addQuiz(quiz);
  }

  void removeQuiz(Quiz quiz) {
    // quizzesRepository.removeQuiz(quiz);
  }

  final quizCreateRM = RM.inject(
    () => null,
  );
  void createQuiz() {}
}
