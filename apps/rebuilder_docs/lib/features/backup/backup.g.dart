// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackupImpl _$$BackupImplFromJson(Map<String, dynamic> json) => _$BackupImpl(
      id: json['id'] as String,
      isBackingUp: json['isBackingUp'] as String,
      settings: json['settings'] as String,
      topics: json['topics'] as String,
    );

Map<String, dynamic> _$$BackupImplToJson(_$BackupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isBackingUp': instance.isBackingUp,
      'settings': instance.settings,
      'topics': instance.topics,
    };
