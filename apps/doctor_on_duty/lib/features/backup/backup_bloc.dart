import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:doctor_on_duty/features/backup/backup.dart';
import 'package:doctor_on_duty/features/topics/topics_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/core.dart';
import '../topics/topics.dart';

final BackupBloc backupsBloc = BackupBloc();

class BackupBloc {
  final backupModelRM = RM.inject(
    () => BackupModel.init(),
  );
  BackupModel get backupModel => backupModelRM.state;
  setBackupModel(BackupModel Function(BackupModel backupModel) modifier) =>
      backupModelRM.state = modifier(backupModel);
  List<String> get paths => backupModel.paths;
  void setPaths(List<String> Function(List<String> paths) pathsModifier) {
    setBackupModel(
      (backupModel) => backupModel.copyWith(
        paths: pathsModifier([...paths]),
      ),
    );
  }

  BackupStatus get backupStatus => backupModel.backupStatus;
  void setBackupStatus(
      BackupStatus Function(BackupStatus backupStatus) backupStatusModifier) {
    setBackupModel(
      (backupModel) => backupModel.copyWith(
        backupStatus: backupStatusModifier(backupStatus),
      ),
    );
  }

  void addPath(String path) {
    setPaths((paths) => paths..add(path));
  }

  void removePath(String path) {
    setPaths((paths) => paths..remove(path));
  }

  bool isFilePresentForPath(String path) {
    final file = File(path);
    return file.existsSync();
  }

  void backup() async {
    try {
      setBackupStatus((backupStatus) => BackupStatus.working);
      await Future.delayed(3.seconds);
      final id = randomId;
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}\\$id';
      addPath(path);
      final file = File(path);
      final topics = topicsManager.topics;
      final contents = Topic.toListJson(topics);
      file.writeAsString(contents);
      setBackupStatus((backupStatus) => BackupStatus.idle);
    } catch (e) {
      setBackupStatus((backupStatus) => BackupStatus.error);
      print(e);
    }
  }

  deleteBackup(String path) {
    setBackupStatus((backupStatus) => BackupStatus.working);
    removePath(path);
    final file = File(path);
    file.deleteSync();
    setBackupStatus((backupStatus) => BackupStatus.idle);
  }
}
