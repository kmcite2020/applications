import '../../main.dart';

part 'question.g.dart';
part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question.raw({
    @Default('') final String questionID,
    @Default('') final String title,
    @Default('') final String a,
    @Default('') final String b,
    @Default('') final String c,
    @Default('') final String d,
  }) = _Question;

  factory Question.fromJson(json) => _$QuestionFromJson(json);
  factory Question() => Question.raw(questionID: randomID);
}

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    @Default(<String, Question>{}) final Map<String, Question> cache,
    @Default(QuestionsStatus.success) final QuestionsStatus questionsStatus,
  }) = _QuestionsState;

  factory QuestionsState.fromJson(json) => _$QuestionsStateFromJson(json);
}

enum QuestionsStatus { loading, success, error }
