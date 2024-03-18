import '../../main.dart';

final QuestionsManager questionsManager = QuestionsManager();

class QuestionsManager {
  final questionsStateRM = RM.inject(
    () => QuestionsState(),
  );

  bool get waiting => questionsStateRM.isWaiting;

  QuestionsState get questionsState => questionsStateRM.state;
  set questionsState(QuestionsState value) => questionsStateRM.state = value;

  void setStatus(QuestionsStatus status) =>
      questionsState = questionsState.copyWith(questionsStatus: status);

  void addQuestion(Question question) {
    questionsState = questionsState.copyWith(
      cache: Map.of(questionsState.cache)..[question.questionID] = question,
    );
  }

  void removeQuestion(Question question) {
    questionsState = questionsState.copyWith(
      cache: Map.of(questionsState.cache)..remove(question.questionID),
    );
  }
}
