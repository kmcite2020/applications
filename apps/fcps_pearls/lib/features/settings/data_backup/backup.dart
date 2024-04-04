
// part 'backup.g.dart';
// part 'backup.freezed.dart';

// @freezed
// class Backup with _$Backup {
//   static final pathToStoreBackup = join(directory.path, 'pearls.json');
//   const factory Backup({
//     @Default(Pearls()) final Pearls data,
//     @Default(false) final bool loading,
//     required final DateTime lastSynced,
//   }) = _Backup;
//   const Backup._();
//   File get file => File(pathToStoreBackup);
//   bool get isSynced => DateTime.now().difference(lastSynced).inMinutes < 15;
//   factory Backup.fromJson(Map<String, dynamic> json) => _$BackupFromJson(json);
// }

// final backupManager = BackupManager();

// class BackupManager {
//   final backupRM = Backup(
//     lastSynced: DateTime.now(),
//   ).obs();
//   Backup call([Backup? newState]) => backupRM(newState);

//   void backup() async {
//     // if (backupRM().isSynced) return;
//     backupRM(backupRM().copyWith(loading: true));
//     await Future.delayed(100.milliseconds);
//     print('getting data from pearls');
//     final data = pearlsRM();
//     await Future.delayed(100.milliseconds);
//     print('setting data to BackupManager()');
//     // backupRM(backupRM().copyWith(data: data));
//     await Future.delayed(100.milliseconds);
//     print('backing up to ${backupRM().file.path}');
//     backupRM().file.writeAsString(jsonEncode(backupRM().data));
//     await Future.delayed(100.milliseconds);
//     print('backup completed');
//     await Future.delayed(100.milliseconds);
//     backupRM(
//       backupRM().copyWith(
//         loading: false,
//         lastSynced: DateTime.now(),
//       ),
//     );
//   }

//   void restoreFromBackedUpAlready() async {
//     // if (backupRM().file.existsSync()) {
//     //   backupRM(backupRM().copyWith(loading: true));
//     //   await Future.delayed(100.milliseconds);
//     //   backupRM(
//     //     backupRM().copyWith(
//     //       data: Pearls.fromJson(
//     //         jsonDecode(
//     //           backupRM().file.readAsStringSync(),
//     //         ),
//     //       ),
//     //       loading: false,
//     //     ),
//     //   );
//     //   await Future.delayed(100.milliseconds);
//     //   print('restored from ${backupRM().file.path}');
//     //   await Future.delayed(100.milliseconds);
//     //   pearlsRM(backupRM().data);
//     //   print('restored pearls');
//     //   backupRM(backupRM().copyWith(loading: false));
//     // } else
//     //   print('file not found');
//   }

//   void selectFileToRestoreFrom() async {
//     // backupRM(backupRM().copyWith(loading: true));
//     // final result = await FilePicker.platform.pickFiles(
//     //   withData: true,
//     // );
//     // await Future.delayed(100.milliseconds);
//     // if (result == null) return;
//     // print(result.files.single.path);
//     // final filePicked = result.files.single;
//     // print(filePicked.path);
//     // final fileData = filePicked.bytes;
//     // print(fileData?.length);
//     // if (fileData == null) return;
//     // File tempFile = File(
//     //   join(Directory.systemTemp.path, 'temp.json'),
//     // );
//     // await tempFile.writeAsBytes(fileData);
//     // final dynamicData = tempFile.readAsStringSync();
//     // print(tempFile.path);
//     // final decodedData = jsonDecode(dynamicData);
//     // print(decodedData);
//     // final pearls = Pearls.fromJson(decodedData);
//     // if (pearls.length == 0) {
//     //   print('probably it is not a valid file to restore from.');
//     //   return;
//     // }
//     // await Future.delayed(100.milliseconds);
//     // pearlsRM(pearls);
//     // print('data restored');
//     // backupRM(backupRM().copyWith(loading: false));
//   }

//   void selectPlaceToSetData() async {
//     backupRM(backupRM().copyWith(loading: true));
//     final pickedPath = await FilePicker.platform.getDirectoryPath();
//     if (pickedPath == null)
//       print('No path selected');
//     else {
//       print(pickedPath);
//       final pearls = pearlsRM();
//       print('${pearls.length} pearls are taken from RAM');
//       final tempPath = join(pickedPath, 'pearls.json');
//       print('$tempPath created');
//       final file = File(tempPath);
//       print('$file in memory');
//       final json = jsonEncode(pearls as String);
//       print('json created');
//       file.writeAsStringSync(json);
//       print('file ${file.path} created');
//       await Future.delayed(100.milliseconds);
//     }
//     backupRM(backupRM().copyWith(loading: false));
//   }
// }
