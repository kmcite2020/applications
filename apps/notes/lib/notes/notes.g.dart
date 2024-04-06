// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String,
      timeCreated: DateTime.parse(json['timeCreated'] as String),
      title: json['title'] as String? ?? '',
      details: json['details'] as String? ?? '',
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeCreated': instance.timeCreated.toIso8601String(),
      'title': instance.title,
      'details': instance.details,
    };
