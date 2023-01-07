// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../models/enums.dart';
import '../../settings/settings.dart';
import '../../utils.dart';

// /// DATA SUPPORT
final deafultStartPageValues = [
  'Processes',
  'Performance',
  'App history',
  'Startup apps',
  'Users',
  'Details',
  'Services',
];
final realtimeUpdateSpeedValues = [
  'High',
  'Normal',
  'Low',
  'Paused',
];

// /// Models
// final defaultStartPageFieldRM = RM.inject<String?>(() => deafultStartPageValues.first);
// final realtimeUpdateSpeedRM = RM.inject<String?>(() => realtimeUpdateSpeedValues.first);

// /// Window Management
// final alwaysOnTopRM = RM.inject(() => false);
// final minimizeOnUseRM = RM.inject(() => false);
// final hideWhenMinimizedRM = RM.inject(() => false);

// /// Other Options
// final showFullAccountNameRM = RM.inject(() => false);
// final showHistoryForAllProcessesRM = RM.inject(() => false);

class TaskManagerApp extends HookConsumerWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manger - Settings"),
        actions: [AppSelectorToggle()],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              textScaleFactor: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Default Start Page',
              textScaleFactor: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: 'Processes',
              items: deafultStartPageValues
                  .map(
                    (String e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                // defaultStartPageFieldRM.state = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Real time update speed',
              textScaleFactor: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: 'High',
              items: realtimeUpdateSpeedValues
                  .map(
                    (String e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                // realtimeUpdateSpeedRM.state = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Window management',
              textScaleFactor: 2,
            ),
          ),
          // CheckboxListTile(
          //   title: Text('Always on top'),
          //   value: alwaysOnTopRM.state,
          //   onChanged: (v) => alwaysOnTopRM.state = v!,
          // ),
          // CheckboxListTile(
          //   title: Text('Minimize on use'),
          //   value: minimizeOnUseRM.state,
          //   onChanged: (v) => minimizeOnUseRM.state = v!,
          // ),
          // CheckboxListTile(
          //   title: Text('Hide when minimized'),
          //   value: hideWhenMinimizedRM.state,
          //   onChanged: (v) => hideWhenMinimizedRM.state = v!,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Other options',
              textScaleFactor: 2,
            ),
          ),
          // CheckboxListTile(
          //   title: Text('Show full account name'),
          //   value: showFullAccountNameRM.state,
          //   onChanged: (v) => showFullAccountNameRM.state = v!,
          // ),
          // CheckboxListTile(
          //   title: Text('Show history for all processes'),
          //   value: showHistoryForAllProcessesRM.state,
          //   onChanged: (v) => showHistoryForAllProcessesRM.state = v!,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // RM.navigate.to(
          //   NextPage(
          //     {
          //       "defaultStartPageFieldRM": defaultStartPageFieldRM.state,
          //       "realtimeUpdateSpeedRM": realtimeUpdateSpeedRM.state,
          //       "alwaysOnTopRM": alwaysOnTopRM.state,
          //       "minimizeOnUseRM": minimizeOnUseRM.state,
          //       "hideWhenMinimizedRM": hideWhenMinimizedRM.state,
          //       "showFullAccountNameRM": showFullAccountNameRM.state,
          //       "showHistoryForAllProcessesRM": showHistoryForAllProcessesRM.state,
          //     },
          //   ),
          // );
        },
        tooltip: 'save settings',
        child: Icon(Icons.save),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NextPage extends HookConsumerWidget {
  const NextPage(this.data, {super.key});
  final Map data;
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings - Retrieved'),
      ),
      body: Row(
        children: [
          Column(
            children: [
              for (final eachData in data.keys)
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    eachData.toString(),
                  ),
                ),
            ],
          ),
          Column(
            children: [
              for (final eachData in data.values)
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    eachData.toString(),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}

class DashboardApp extends HookConsumerWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    final settingsNotifier = ref.watch(settingsProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("APPS"),
        actions: const [
          AppSelectorToggle(),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: AvailableApps.values.map(
          (eachApp) {
            return Padding(
              padding: EdgeInsets.all(settingsModel.padding),
              child: InkWell(
                borderRadius: BorderRadius.circular(settingsModel.borderRadius),
                onTap: () {
                  settingsNotifier.currentApp = eachApp;
                },
                child: Padding(
                  padding: EdgeInsets.all(settingsModel.padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        eachApp.iconData ?? MdiIcons.appsBox,
                        size: 70,
                      ),
                      Container(
                        padding: EdgeInsets.all(settingsModel.padding),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(settingsModel.borderRadius),
                        ),
                        child: Text(
                          eachApp.description,
                          textScaleFactor: .7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
