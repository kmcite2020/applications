import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../controllers/settings.dart';
import '../../models/settings.dart';

class AppSelectorToggle extends HookConsumerWidget {
  const AppSelectorToggle({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    final signOut = ref.read(settingsProvider.notifier).signOut;
    return Padding(
      padding: EdgeInsets.all(settingsModel.padding),
      child: Row(
        children: [
          IconButton(
            tooltip: "${ref.watch(settingsProvider).currentApp}",
            onPressed: () => ref.read(settingsProvider.notifier).exitApp(),
            icon: const Icon(
              Icons.close,
            ),
          ),
          IconButton(
            tooltip: settingsModel.authenticated ? "sign out from the apps" : "already signed out",
            onPressed: settingsModel.authenticated ? signOut : null,
            icon: Icon(
              settingsModel.authenticated ? MdiIcons.logout : MdiIcons.login,
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWidget extends HookConsumerWidget {
  final Size size;

  const BackgroundWidget(this.size, {super.key});
  @override
  Widget build(context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height / 4 - 56,
            color: settingsModel.materialColor.shade200,
          ),
          Container(
            width: size.width,
            height: size.height * 3 / 4 - 36,
            color: settingsModel.materialColor.shade700,
          )
        ],
      ),
    );
  }
}
