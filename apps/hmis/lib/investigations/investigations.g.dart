// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestigationImpl _$$InvestigationImplFromJson(Map<String, dynamic> json) =>
    _$InvestigationImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      price: json['price'] as int? ?? 200,
    );

Map<String, dynamic> _$$InvestigationImplToJson(_$InvestigationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };

_$InvestigationsImpl _$$InvestigationsImplFromJson(Map<String, dynamic> json) =>
    _$InvestigationsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, Investigation.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Investigation>{},
    );

Map<String, dynamic> _$$InvestigationsImplToJson(
        _$InvestigationsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
