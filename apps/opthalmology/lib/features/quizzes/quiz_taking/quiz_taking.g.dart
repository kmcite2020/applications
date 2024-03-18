// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_taking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizTakingStateImpl _$$QuizTakingStateImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizTakingStateImpl(
      quiz: json['quiz'] == null ? null : Quiz.fromJson(json['quiz']),
    );

Map<String, dynamic> _$$QuizTakingStateImplToJson(
        _$QuizTakingStateImpl instance) =>
    <String, dynamic>{
      'quiz': instance.quiz,
    };
