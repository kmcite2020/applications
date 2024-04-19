// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pearl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PearlImpl _$$PearlImplFromJson(Map<String, dynamic> json) => _$PearlImpl(
      id: json['id'] as String? ?? '',
      statement: json['statement'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      explanation: json['explanation'] as String? ?? '',
    );

Map<String, dynamic> _$$PearlImplToJson(_$PearlImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statement': instance.statement,
      'answer': instance.answer,
      'explanation': instance.explanation,
    };
