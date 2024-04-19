// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../main.dart';

part 'backup_model.g.dart';
part 'backup_model.freezed.dart';

@freezed
class Backup with _$Backup {
  const factory Backup({
    @Default(<String>[]) final List<String> files,
    @Default(BackupStatus.idle) final BackupStatus backupStatus,
    @Default(true) final bool isShowHistory,
  }) = _Backup;
  const Backup._();
  bool get isAbleToShare => files.isNotEmpty;
  String? get pathWhereLastBackupSaved {
    if (files.isEmpty) {
      return null;
    } else {
      return files.first;
    }
  }

  bool get isBackupHappened => files.isNotEmpty;

  factory Backup.fromJson(Map<String, dynamic> json) => _$BackupFromJson(json);
}

enum BackupStatus {
  running,
  error,
  failed,
  sharing,
  idle;
}

final backupBloc = BackupBloc(Backup());

class BackupBloc extends Simple<Backup> {
  BackupBloc(super.initialState);

  void onFilesChanged(List<String> files) {
    state = state.copyWith(files: files);
  }

  void onBackupStatusChanged(BackupStatus backupStatus) {
    state = state.copyWith(backupStatus: backupStatus);
  }

  void onIsShowingHistoryChanged(bool isShowHistory) {
    state = state.copyWith(isShowHistory: isShowHistory);
  }

  void addFileToFiles(String file) {
    onBackupStatusChanged(BackupStatus.running);
    onFilesChanged([...state.files, file]);
    onBackupStatusChanged(BackupStatus.idle);
  }

  void clearFile(String file) {
    onBackupStatusChanged(BackupStatus.running);
    onFilesChanged([...state.files]..remove(file));
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
  }

  void shareFiles(List<String> files) async {
    final x = await Share.shareXFiles(
      files.map<XFile>((e) => XFile.fromData(base64Decode(e))).toList(),
    );
  }

  @override
  Backup get initialState => Backup();
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

