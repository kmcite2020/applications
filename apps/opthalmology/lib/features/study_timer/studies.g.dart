// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyImpl _$$StudyImplFromJson(Map<String, dynamic> json) => _$StudyImpl(
      id: json['id'] as String? ?? '',
      started: DateTime.parse(json['started'] as String),
      ended: DateTime.parse(json['ended'] as String),
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$StudyImplToJson(_$StudyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'started': instance.started.toIso8601String(),
      'ended': instance.ended.toIso8601String(),
      'description': instance.description,
    };
