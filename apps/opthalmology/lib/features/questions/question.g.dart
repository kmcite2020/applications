// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      questionID: json['questionID'] as String? ?? '',
      title: json['title'] as String? ?? '',
      a: json['a'] as String? ?? '',
      b: json['b'] as String? ?? '',
      c: json['c'] as String? ?? '',
      d: json['d'] as String? ?? '',
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'questionID': instance.questionID,
      'title': instance.title,
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
    };

_$QuestionsStateImpl _$$QuestionsStateImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsStateImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Question.fromJson(e)),
          ) ??
          const <String, Question>{},
      questionsStatus: $enumDecodeNullable(
              _$QuestionsStatusEnumMap, json['questionsStatus']) ??
          QuestionsStatus.success,
    );

Map<String, dynamic> _$$QuestionsStateImplToJson(
        _$QuestionsStateImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
      'questionsStatus': _$QuestionsStatusEnumMap[instance.questionsStatus]!,
    };

const _$QuestionsStatusEnumMap = {
  QuestionsStatus.loading: 'loading',
  QuestionsStatus.success: 'success',
  QuestionsStatus.error: 'error',
};
