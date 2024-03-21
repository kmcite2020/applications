// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardImpl _$$FlashCardImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardImpl(
      flashGroup: json['flashGroup'] == null
          ? const FlashGroup()
          : FlashGroup.fromJson(json['flashGroup'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      question: json['question'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      explaination: json['explaination'] as String? ?? '',
    );

Map<String, dynamic> _$$FlashCardImplToJson(_$FlashCardImpl instance) =>
    <String, dynamic>{
      'flashGroup': instance.flashGroup,
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'explaination': instance.explaination,
    };
