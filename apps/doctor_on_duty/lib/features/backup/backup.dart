import 'package:freezed_annotation/freezed_annotation.dart';
part 'backup.freezed.dart';
part 'backup.g.dart';

@freezed
class BackupModel with _$BackupModel {
  const factory BackupModel({
    @Default([]) final List<String> paths,
    @Default(BackupStatus.idle) final BackupStatus backupStatus,
  }) = _BackupModel;
  factory BackupModel.fromJson(json) => _$BackupModelFromJson(json);
}

enum BackupStatus {
  working,
  idle,
  error,
}
