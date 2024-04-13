// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };
