import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uuid/uuid.dart';

import 'models/enums.dart';
import 'settings/settings.dart';

class AppSelectorToggle extends HookConsumerWidget {
  const AppSelectorToggle({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    final signOut = ref.read(settingsProvider.notifier).signOut;
    final exitApp = ref.read(settingsProvider.notifier).exitApp;
    return Padding(
      padding: EdgeInsets.all(settingsModel.padding),
      child: Row(
        children: [
          settingsModel.currentApp != null
              ? IconButton(
                  tooltip: "exit app",
                  onPressed: exitApp,
                  icon: const Icon(
                    Icons.close,
                  ),
                )
              : IconButton(
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

late Uint8List defaultImage;
Future<void> get initDefaultImage async {
  ByteData bytes = await rootBundle.load('lib/assets/icon.png');
  defaultImage = bytes.buffer.asUint8List();
}

List<MaterialColor> get colors => Colors.primaries;
List<ThemeMode> get themeModes => ThemeMode.values;
List<AvailableApps> get availableApps => AvailableApps.values;
List<String> get fonts {
  return [
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

// String googleFont(String font) {}

/// UTILS
String getGoogleFont(x) {
  return GoogleFonts.getFont(x).fontFamily!;
}

String get randomID => const Uuid().v1();
