import 'package:freezed_annotation/freezed_annotation.dart';
part 'backup.freezed.dart';
part 'backup.g.dart';

@freezed
class BackupModel with _$BackupModel {
  const factory BackupModel({
    required final List<String> paths,
    required final BackupStatus backupStatus,
  }) = _BackupModel;
  factory BackupModel.fromJson(json) => _$BackupModelFromJson(json);
  factory BackupModel.init() =>
      BackupModel(paths: [], backupStatus: BackupStatus.idle);
}

enum BackupStatus {
  working,
  idle,
  error,
}
