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

_$PearlsImpl _$$PearlsImplFromJson(Map<String, dynamic> json) => _$PearlsImpl(
      pearlsCache: (json['pearlsCache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Pearl.fromJson(e)),
          ) ??
          const <String, Pearl>{},
      loading: json['loading'] as bool? ?? false,
    );

Map<String, dynamic> _$$PearlsImplToJson(_$PearlsImpl instance) =>
    <String, dynamic>{
      'pearlsCache': instance.pearlsCache,
      'loading': instance.loading,
    };
