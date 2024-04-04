import 'dart:convert';
import 'dart:io';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:derma_handbook/features/core/extensions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:share_plus/share_plus.dart';

part 'backup_model.g.dart';

@JsonSerializable()
@CopyWith()
class Backup {
  final List<String> files;
  final BackupStatus backupStatus;
  final bool isShowHistory;
  const Backup({
    this.files = const [],
    this.backupStatus = BackupStatus.idle,
    this.isShowHistory = false,
  });

  @ignore
  bool get isAbleToShare => files.isNotEmpty;
  @ignore
  String? get pathWhereLastBackupSaved {
    if (files.isEmpty) {
      return null;
    } else {
      return files.first;
    }
  }

  @ignore
  bool get isBackupHappened => files.isNotEmpty;
  toJson() => _$BackupToJson(this);
  factory Backup.fromJson(json) => _$BackupFromJson(json);
}

enum BackupStatus {
  running,
  error,
  failed,
  sharing,
  idle;
}

final backupBloc = BackupBloc();

class BackupBloc {
  final backupRM = RM.inject(() => const Backup());
  Backup get backupState => backupRM.state;
  set backupState(Backup value) => backupRM.state = value;

  void onFilesChanged(List<String> files) {
    backupState = backupState.copyWith(files: files);
  }

  void onBackupStatusChanged(BackupStatus backupStatus) {
    backupState = backupState.copyWith(backupStatus: backupStatus);
  }

  void onIsShowingHistoryChanged(bool isShowHistory) {
    backupState = backupState.copyWith(isShowHistory: isShowHistory);
  }

  void addFileToFiles(String file) {
    onBackupStatusChanged(BackupStatus.running);
    onFilesChanged([...backupState.files, file]);
    onBackupStatusChanged(BackupStatus.idle);
  }

  void clearFile(String file) {
    onBackupStatusChanged(BackupStatus.running);
    onFilesChanged([...backupState.files]..remove(file));
    onBackupStatusChanged(BackupStatus.idle);
  }

  void clearAllFiles() {
    onBackupStatusChanged(BackupStatus.running);
    onFilesChanged([]);
    onBackupStatusChanged(BackupStatus.idle);
  }

  void restoreFromFile() async {
    try {
      onBackupStatusChanged(BackupStatus.running);
      final pick = await FilePicker.platform.pickFiles(
        lockParentWindow: true,
        type: FileType.any,
        withData: true,
      );

      if (pick != null) {
        // final DiseasesRepository diseasesRepository = ref.watch(diseasesRepositoryProvider);
        // final Uint8List uint8list = pick.files.first.bytes!;
        // diseasesRepository.restoreFromFile(base64Encode(uint8list));
      }
      onBackupStatusChanged(BackupStatus.idle);
    } catch (e) {
      onBackupStatusChanged(BackupStatus.error);
    }
    // TODO - WILL HAVE TO WORK ON THESE METHODS
  }

  backupToFile() async {
    // final DiseasesRepository diseasesRepository = ref.watch(diseasesRepositoryProvider);
    // final data = diseasesRepository.getAllDiseases();
    // final jsonify = data.map((e) => e.toJson());

    final directory = await getApplicationDocumentsDirectory();
    final now = DateTime.now();
    final y = File("${directory.path}/$now");
    y.createSync();
    // y.writeAsBytesSync(base64Decode(jsonEncode(jsonify)));
  }

  void shareFile(String file) async {
    final x = await Share.shareXFiles([XFile.fromData(base64Decode(file))]);
    x.log();
  }

  void shareFiles(List<String> files) async {
    final x = await Share.shareXFiles(
      files.map<XFile>((e) => XFile.fromData(base64Decode(e))).toList(),
    );
    x.log();
  }
}

  // void startBackup() async {
  //   try {
  //     backupStatus = BackupStatus.running;
  //     final documentsDir = await getExternalStorageDirectory();
  //     final dateTimeNow = DateTime.now();
  //     final fileToStorePath = "${documentsDir!.path}/$dateTimeNow.txt";
  //     final File fileToSave = File(fileToStorePath);
  //     fileToSave;
  //     // await fileToSave.writeAsString(diseasesBloc, flush: true);
  //     backupStatus = BackupStatus.error;
  //     addFileToFiles(fileToStorePath);
  //   } catch (e) {
  //     showInformations(e);
  //     backupStatus = BackupStatus.failed;
  //   }
  // }

  // void restoreBackup() async {}

  // void restoreFromFile(String e) async {
  //   try {
  //     backupStatus = BackupStatus.running;
  //     // final fileToRestore = File(e);
  //     // final jsonData = fileToRestore.readAsStringSync();
  //     // DiseasesBloc.to.state = DiseasesModel.fromJson(jsonData);
  //     backupStatus = BackupStatus.error;
  //   } catch (e) {
  //     showInformations(e);
  //     backupStatus = BackupStatus.failed;
  //   }
  // }

  // void shareBackupFile() async {
  //   backupStatus = BackupStatus.sharing;
  //   await Share.shareXFiles(
  //     [files.first].map((e) => XFile(e)).toList(),
  //   );
  //   backupStatus = BackupStatus.error;
  //   await Future.delayed(const Duration(seconds: 1));
  //   backupStatus = BackupStatus.idle;
  // }

