// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackupModelImpl _$$BackupModelImplFromJson(Map<String, dynamic> json) =>
    _$BackupModelImpl(
      paths:
          (json['paths'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      backupStatus:
          $enumDecodeNullable(_$BackupStatusEnumMap, json['backupStatus']) ??
              BackupStatus.idle,
    );

Map<String, dynamic> _$$BackupModelImplToJson(_$BackupModelImpl instance) =>
    <String, dynamic>{
      'paths': instance.paths,
      'backupStatus': _$BackupStatusEnumMap[instance.backupStatus]!,
    };

const _$BackupStatusEnumMap = {
  BackupStatus.working: 'working',
  BackupStatus.idle: 'idle',
  BackupStatus.error: 'error',
};
