// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_disease_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditModelImpl _$$EditModelImplFromJson(Map<String, dynamic> json) =>
    _$EditModelImpl(
      editId: json['editId'] as String? ?? '<String>[]',
      name: json['name'] as String? ?? '<String>[]',
      descriptions: (json['descriptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      instructions: (json['instructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      managements: (json['managements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      image: _$JsonConverterFromJson<String, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$EditModelImplToJson(_$EditModelImpl instance) =>
    <String, dynamic>{
      'editId': instance.editId,
      'name': instance.name,
      'descriptions': instance.descriptions,
      'instructions': instance.instructions,
      'managements': instance.managements,
      'image': _$JsonConverterToJson<String, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
