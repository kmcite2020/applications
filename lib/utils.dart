import 'package:apps/views/apps_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import 'models/enums.dart';

extension PaddingX on Widget {
  Widget get pad {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: this,
    );
  }
}

extension TextX on String {
  Text get text => Text(this);
  Text get textScale2 => Text(this, textScaleFactor: 2);
  Text get textScale4 => Text(this, textScaleFactor: 4);
  Text get textScale6 => Text(this, textScaleFactor: 6);
}

final router = RM.injectNavigator(
  routes: {
    '/': (data) => const AppsScreen(),
  },
);

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
