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

_$NotesImpl _$$NotesImplFromJson(Map<String, dynamic> json) => _$NotesImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Note.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Note>{},
    );

Map<String, dynamic> _$$NotesImplToJson(_$NotesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
