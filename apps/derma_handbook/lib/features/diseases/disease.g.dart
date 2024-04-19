// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseImpl _$$DiseaseImplFromJson(Map<String, dynamic> json) =>
    _$DiseaseImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      image: _$JsonConverterFromJson<String, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
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
    );

Map<String, dynamic> _$$DiseaseImplToJson(_$DiseaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': _$JsonConverterToJson<String, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
      'createdAt': instance.createdAt?.toIso8601String(),
      'descriptions': instance.descriptions,
      'instructions': instance.instructions,
      'managements': instance.managements,
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
