// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unused_local_variable

import 'package:apps/views/settings/userInformations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/settings.dart';
import '../models/enums.dart';
import '../models/settings.dart';
import '../utils.dart';
import 'widgets/app_selector.dart';

class Apps extends HookConsumerWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    final settingsNotifier = ref.read(settingsProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("APPS"),
        actions: const [
          AppSelectorToggle(),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserInformations(),
          ),
          for (final app in availableApps)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    // settingsNotifier.currentApp(app);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => app.widget ?? Apps(),
                      ),
                    );
                    // context.goNamed(app.description);
                  },
                  leading: Icon(app.iconData),
                  title: Text(app.description),
                  subtitle: Text(app.name),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
