import 'package:apps/utils.dart';
import 'package:flutter/material.dart';

class AppSelectorToggle extends StatelessWidget {
  const AppSelectorToggle({super.key});
  @override
  Widget build(
    BuildContext context,
  ) {
    // final settingsModel = ref.watch(settingsProvider);
    // final signOut = ref.read(settingsProvider.notifier).signOut;
    return Row(
      children: const [
        // IconButton(
        //   // tooltip: "${ref.watch(settingsProvider).currentApp}",
        //   onPressed: () => ref.read(settingsProvider.notifier).exitApp(),
        //   icon: const Icon(
        //     Icons.close,
        //   ),
        // ),
        // IconButton(
        //   tooltip: settingsModel.authenticated ? "sign out from the apps" : "already signed out",
        //   onPressed: settingsModel.authenticated ? signOut : null,
        //   icon: Icon(
        //     settingsModel.authenticated ? MdiIcons.logout : MdiIcons.login,
        //   ),
        // ),
      ],
    ).pad;
  }
}

class BackgroundWidget extends StatelessWidget {
  final Size size;

  const BackgroundWidget(this.size, {super.key});
  @override
  Widget build(context) {
    // final settingsModel = ref.watch(settingsProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height / 4 - 56,
            // color: settingsModel.materialColor.shade200,
          ),
          SizedBox(
            width: size.width,
            height: size.height * 3 / 4 - 36,
            // color: settingsModel.materialColor.shade700,
          )
        ],
      ),
    );
  }
}
