// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashGroupImpl _$$FlashGroupImplFromJson(Map<String, dynamic> json) =>
    _$FlashGroupImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: json['color'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$$FlashGroupImplToJson(_$FlashGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': const MaterialColorConverter().toJson(instance.color),
    };
