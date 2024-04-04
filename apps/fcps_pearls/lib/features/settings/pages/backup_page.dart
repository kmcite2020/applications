import 'package:manager/manager.dart';

class BackupPage extends UI {
  const BackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // ElevatedButton(
          //   onPressed: backupManager().loading
          //       ? null
          //       : () {
          //           backupManager.backup();
          //         },
          //   child: 'Backup'.text(scale: 2).pad(),
          // ).pad(),
          // ElevatedButton(
          //   onPressed: backupManager().loading
          //       ? null
          //       : () {
          //           backupManager.restoreFromBackedUpAlready();
          //         },
          //   child: 'Restore'.text(scale: 2).pad(),
          // ).pad(),
          // ElevatedButton(
          //   onPressed: backupManager().loading
          //       ? null
          //       : () {
          //           backupManager.selectFileToRestoreFrom();
          //         },
          //   child: backupManager().loading
          //       ? CircularProgressIndicator().pad()
          //       : 'Select a place to get Data'.text(scale: 2).pad(),
          // ).pad(),
          // ElevatedButton(
          //   onPressed: backupManager().loading
          //       ? null
          //       : () {
          //           backupManager.selectPlaceToSetData();
          //         },
          //   child: backupManager().loading
          //       ? CircularProgressIndicator().pad()
          //       : 'Select a place to set Data'.text(scale: 2).pad(),
          // ).pad(),
        ],
      ),
    );
  }
}
