import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../diseases/diseases_providers.dart';
import 'backup_model.dart';
import 'settings.dart';

class DataManagementWidget extends ReactiveStatelessWidget {
  const DataManagementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        const BackupManagerWidget()

        // _buildBackupRestoreWidget(context).pad(context),
        // ElevatedButton.icon(
        //   onPressed: backupBloc.restoreBackup,
        //   label: 'RESTORE BACKUP'.textify(),
        //   icon: const Icon(Icons.restore),
        // ).pad(context),
        // ElevatedButton.icon(
        //   onPressed: diseasesBloc.defaultState == diseasesBloc.state
        //       ? null
        //       : () {
        //           diseasesBloc.restoreDefaultData();
        //         },
        //   label: 'RESTORE DEFAULT DISEASES'.toText(),
        //   icon: const Icon(Icons.restore),
        // ).toPad,context
        ,
        ElevatedButton.icon(
          onPressed:
              diseases.isEmpty ? null : DiseasesMutations.removeAllDiseases,
          label: "DELETE ALL DATA".text(),
          icon: const Icon(Icons.delete),
        ).pad(),
      ],
    );
  }
}

class BackupManagerWidget extends ReactiveStatelessWidget {
  const BackupManagerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: switch (backupBloc.backupState.backupStatus) {
            BackupStatus.idle => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    settingsManager.settings.borderRadius,
                  ),
                  color: Colors.amber,
                ),
                child: backupBloc.backupState.text().pad(),
              ),
            BackupStatus.running => backupBloc.backupState.text(),
            BackupStatus.error => Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    backupBloc.backupState.text(),
                  ],
                ),
              ),
            BackupStatus.failed => Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: 'child'.text(),
                    ),
                  ],
                ),
              ),
            BackupStatus.sharing => backupBloc.backupState.text(),
          }
              .pad(),
        ),
        ElevatedButton(
          onPressed: () {
            backupBloc.onBackupStatusChanged(BackupStatus.idle);
          },
          child: 'RESET STATE'.text(),
        ).pad(),
        ElevatedButton(
          onPressed: () {
            backupBloc.clearAllFiles();
          },
          child: 'clearFiles'.text(),
        ).pad(),
        ElevatedButton(
          onPressed: () {
            backupBloc.backupToFile();
          },
          child: 'backupToFile'.text(),
        ).pad(),
        ElevatedButton(
          onPressed: () {
            backupBloc.shareFiles(backupBloc.backupState.files);
          },
          child: 'shareFiles'.text(),
        ).pad(),
      ],
    );
  }
}

// ignore: unused_element
// Widget _buildBackupRestoreWidget(BuildContext context) {
//   switch (backupBloc.backupStatus) {
//     case BackupStatus.running:
//       return BackupWidget(
//         child: Center(
//           child: const CircularProgressIndicator().pad(context),
//         ),
//       );
//     case BackupStatus.sharing:
//       return BackupWidget(
//         child: Center(
//           child: const CircularProgressIndicator().pad(context),
//         ),
//       );
//     case BackupStatus.completed:
//       final SettingsBloc settingsBloc = context.watch();
//       return BackupWidget(
//         child: ListTile(
//           // onLongPress: backupBloc.startBackup,
//           trailing: Switch(
//             value: backupBloc.showHistory,
//             onChanged: (_) => backupBloc.toggleShowHistory(),
//           ),
//           title: ListView(
//             shrinkWrap: true,
//             physics: const BouncingScrollPhysics(),
//             children: [
//               'Backup Completed'.textify(settingsBloc.state.headlineTextSize),
//               if (backupBloc.isBackupHappened)
//                 Row(
//                   children: [
//                     IconButton(
//                       tooltip: 'delete all backup files',
//                       onPressed: () => backupBloc.clearFiles(),
//                       icon: const Icon(Icons.delete_forever),
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.backup),
//                       onPressed: backupBloc.startBackup,
//                       tooltip: 'backup to files',
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.share),
//                       onPressed: backupBloc.shareBackupFile,
//                       tooltip: 'share latest backup file',
//                     ),
//                   ],
//                 )
//               else
//                 IconButton(
//                   icon: const Icon(Icons.backup),
//                   onPressed: backupBloc.startBackup,
//                   tooltip: 'backup to files',
//                 ),
//             ],
//           ),
//           subtitle: ListView(
//             physics: const BouncingScrollPhysics(),
//             shrinkWrap: true,
//             children: [
//               if (backupBloc.showHistory)
//                 ...backupBloc.files.map(
//                   (e) {
//                     return ListTile(
//                       subtitle: e.textify().pad(context),
//                       title: Row(
//                         children: [
//                           IconButton(
//                             icon: const Icon(Icons.restore),
//                             onPressed: () => backupBloc.restoreFromFile(e),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.delete),
//                             onPressed: () => backupBloc.deleteBackupFile(e),
//                           ),
//                         ],
//                       ),
//                     ).borderize(context, 1).pad(context);
//                   },
//                 ).toList(),
//               if (backupBloc.pathWhereLastBackupSaved != null) backupBloc.pathWhereLastBackupSaved.textify(),
//             ],
//           ),
//         ),
//       );
//     case BackupStatus.failed:
//       return BackupWidget(
//         child: ElevatedButton(
//           onPressed: backupBloc.startBackup,
//           child: Column(
//             children: [
//               'Backup Failed'.textify(),
//               'tap to retry backup again'.textify(.8),
//             ],
//           ),
//         ).pad(context),
//       );
//     case BackupStatus.idle:
//       return BackupWidget(
//         child: ListTile(
//           onTap: backupBloc.startBackup,
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               'START BACKING UP DATA'.textify(),
//               (backupBloc.pathWhereLastBackupSaved == '' ? "NO BACKUP HAPPENED YET" : 'BACKED UP FILE IS LOCTAED AT:').textify(.7),
//               backupBloc.pathWhereLastBackupSaved.textify(),
//             ],
//           ),
//           trailing: const Icon(Icons.local_activity),
//         ),
//       );
//   }
// }
