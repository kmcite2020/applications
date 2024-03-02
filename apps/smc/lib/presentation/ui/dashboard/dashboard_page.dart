import 'package:flutter/material.dart';
import 'package:manager/manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../shared/common.dart';
import '../../../shared/extensions.dart';
import '../../../shared/router.dart';
import 'info_widgets.dart';

class DashboardPage extends ReactiveStatelessWidget {
  static const path = '/dashboard';

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: dashboardPageName.text(),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => router.to(Routes.admin),
            child: 'Admin Page'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: () => router.to(Routes.er),
            child: 'Emergency Patients'.text(),
          ).pad(),
          const InfoWidgets(),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'settings',
            heroTag: randomID,
            onPressed: () {
              router.to(Routes.settings);
            },
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
