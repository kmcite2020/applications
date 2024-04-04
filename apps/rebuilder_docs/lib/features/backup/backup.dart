import 'package:rebuilder_docs/main.dart';

part 'backup.freezed.dart';
part 'backup.g.dart';

@freezed
class Backup with _$Backup {
  const factory Backup.raw({
    required final String id,
    required final String isBackingUp,
    required final String settings,
    required final String topics,
  }) = _Backup;
  const Backup._();
  factory Backup() => Backup.raw(
        id: '',
        isBackingUp: 'isBackingUp',
        settings: 'settings',
        topics: 'topics',
      );
  factory Backup.fromJson(Map<String, dynamic> json) => _$BackupFromJson(json);
}

final backupRM = RM.inject(() => Backup());
