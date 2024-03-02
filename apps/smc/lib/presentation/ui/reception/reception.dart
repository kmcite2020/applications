import 'package:flutter/material.dart';
import 'package:manager/manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/extensions.dart';

class ReceptionUI extends ReactiveStatelessWidget {
  const ReceptionUI({super.key});
  static const path = '/reception';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: 'Subhan Medical Center'.text(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            'Welcome'.text(textScaleFactor: 3).pad(),
            GridView.count(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              // children: ReceptionModel.models
              //     .map(
              //       (e) => Card(
              //         shape: RoundedRectangleBorder(
              //           borderRadius:
              //               configurationBloc.configuration.borderRadius,
              //         ),
              //         child: ListTile(
              //           title: e.name.text(),
              //           subtitle: e.path.text(),
              //           onTap: e.to,
              //         ),
              //       ),
              //     )
              //     .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
//
// class ReceptionModel {
//   String name = 'Admin';
//   String path = 'AdminPage.path';
//   void to() => router.to(path);
//   static List<ReceptionModel> models = [
//     ReceptionModel(),
//     ReceptionModel()
//       ..name = 'Clinic'
//       ..path = ClinicUI.path,
//     ReceptionModel()
//       ..name = 'Emergency Room'
//       ..path = EmergencyRoomUI.path,
//     ReceptionModel()
//       ..name = 'OPD'
//       ..path = OutPatientDepartmentUI.path,
//     ReceptionModel()
//       ..name = 'Ward'
//       ..path = WardsPage.path,
//     ReceptionModel()
//       ..name = 'Configuration'
//       ..path = SettingsPage.path,
//     ReceptionModel()
//       ..name = 'Dashboard'
//       ..path = DashboardPage.path,
//   ];
// }
