// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardImpl _$$FlashCardImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardImpl(
      flashGroupId: json['flashGroupId'] as String? ?? '',
      id: json['id'] as String? ?? '',
      question: json['question'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      explaination: json['explaination'] as String? ?? '',
    );

Map<String, dynamic> _$$FlashCardImplToJson(_$FlashCardImpl instance) =>
    <String, dynamic>{
      'flashGroupId': instance.flashGroupId,
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'explaination': instance.explaination,
    };
