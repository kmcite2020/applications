// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BackupCWProxy {
  Backup files(List<String> files);

  Backup backupStatus(BackupStatus backupStatus);

  Backup isShowHistory(bool isShowHistory);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Backup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Backup(...).copyWith(id: 12, name: "My name")
  /// ````
  Backup call({
    List<String>? files,
    BackupStatus? backupStatus,
    bool? isShowHistory,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBackup.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBackup.copyWith.fieldName(...)`
class _$BackupCWProxyImpl implements _$BackupCWProxy {
  const _$BackupCWProxyImpl(this._value);

  final Backup _value;

  @override
  Backup files(List<String> files) => this(files: files);

  @override
  Backup backupStatus(BackupStatus backupStatus) =>
      this(backupStatus: backupStatus);

  @override
  Backup isShowHistory(bool isShowHistory) =>
      this(isShowHistory: isShowHistory);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Backup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Backup(...).copyWith(id: 12, name: "My name")
  /// ````
  Backup call({
    Object? files = const $CopyWithPlaceholder(),
    Object? backupStatus = const $CopyWithPlaceholder(),
    Object? isShowHistory = const $CopyWithPlaceholder(),
  }) {
    return Backup(
      files: files == const $CopyWithPlaceholder() || files == null
          ? _value.files
          // ignore: cast_nullable_to_non_nullable
          : files as List<String>,
      backupStatus:
          backupStatus == const $CopyWithPlaceholder() || backupStatus == null
              ? _value.backupStatus
              // ignore: cast_nullable_to_non_nullable
              : backupStatus as BackupStatus,
      isShowHistory:
          isShowHistory == const $CopyWithPlaceholder() || isShowHistory == null
              ? _value.isShowHistory
              // ignore: cast_nullable_to_non_nullable
              : isShowHistory as bool,
    );
  }
}

extension $BackupCopyWith on Backup {
  /// Returns a callable class that can be used as follows: `instanceOfBackup.copyWith(...)` or like so:`instanceOfBackup.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BackupCWProxy get copyWith => _$BackupCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Backup _$BackupFromJson(Map<String, dynamic> json) => Backup(
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      backupStatus:
          $enumDecodeNullable(_$BackupStatusEnumMap, json['backupStatus']) ??
              BackupStatus.idle,
      isShowHistory: json['isShowHistory'] as bool? ?? false,
    );

Map<String, dynamic> _$BackupToJson(Backup instance) => <String, dynamic>{
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
