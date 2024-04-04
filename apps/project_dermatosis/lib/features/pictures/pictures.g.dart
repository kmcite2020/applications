// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pictures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageryImpl _$$ImageryImplFromJson(Map<String, dynamic> json) =>
    _$ImageryImpl(
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$ImageryImplToJson(_$ImageryImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
    };

_$ImageriesImpl _$$ImageriesImplFromJson(Map<String, dynamic> json) =>
    _$ImageriesImpl(
      imageryCache: (json['imageryCache'] as List<dynamic>?)
              ?.map((e) => Imagery.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Imagery>[],
    );

Map<String, dynamic> _$$ImageriesImplToJson(_$ImageriesImpl instance) =>
    <String, dynamic>{
      'imageryCache': instance.imageryCache,
    };
