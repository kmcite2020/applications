import '../../../main.dart';

part 'quiz_taking.g.dart';
part 'quiz_taking.freezed.dart';

@freezed
class QuizTakingState with _$QuizTakingState {
  const factory QuizTakingState({final Quiz? quiz}) = _QuizTakingState;

  factory QuizTakingState.fromJson(Map<String, dynamic> json) =>
      _$QuizTakingStateFromJson(json);
}
