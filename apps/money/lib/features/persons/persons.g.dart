// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonsImpl _$$PersonsImplFromJson(Map<String, dynamic> json) =>
    _$PersonsImpl(
      data: (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Person.fromJson(e)),
          ) ??
          const <String, Person>{},
    );

Map<String, dynamic> _$$PersonsImplToJson(_$PersonsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      personID: json['personID'] as String,
      name: json['name'] as String,
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'personID': instance.personID,
      'name': instance.name,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };
