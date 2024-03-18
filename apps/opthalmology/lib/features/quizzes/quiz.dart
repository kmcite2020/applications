import '../../main.dart';

part 'quiz.g.dart';
part 'quiz.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    final String? id,
    final String? title,
    final String? author,
    final Duration? duration,
    final String? difficultyLevel,
    final String? chapter,
    final String? instructions,
    final Map<String, dynamic>? metadata,
    final List<UserScore>? userScores,
    final bool? randomizeQuestions,
    final bool? isPublic,
    final String? accessCode,
    final DateTime? dateCreated,
    final DateTime? lastModified,
    final List<Question>? questions,
  }) = _Quiz;

  factory Quiz.fromJson(json) => _$QuizFromJson(json);

  static fromID(quizID) {}
}

@freezed
class UserScore with _$UserScore {
  const factory UserScore({
    String? username,
    int? score,
    DateTime? timestamp,
  }) = _UserScore;

  factory UserScore.fromJson(json) => _$UserScoreFromJson(json);
}
