// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackupImpl _$$BackupImplFromJson(Map<String, dynamic> json) => _$BackupImpl(
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      backupStatus:
          $enumDecodeNullable(_$BackupStatusEnumMap, json['backupStatus']) ??
              BackupStatus.idle,
      isShowHistory: json['isShowHistory'] as bool? ?? true,
    );

Map<String, dynamic> _$$BackupImplToJson(_$BackupImpl instance) =>
    <String, dynamic>{
      'files': instance.files,
      'backupStatus': _$BackupStatusEnumMap[instance.backupStatus]!,
      'isShowHistory': instance.isShowHistory,
    };

const _$BackupStatusEnumMap = {
  BackupStatus.running: 'running',
  BackupStatus.error: 'error',
  BackupStatus.failed: 'failed',
  BackupStatus.sharing: 'sharing',
  BackupStatus.idle: 'idle',
};
