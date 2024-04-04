import 'main.dart';

export 'dart:convert';
export 'dart:developer' hide Flow;
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart' hide StatelessWidget;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:money/features/app.dart';
export 'package:money/features/core/navigator.dart';
export 'package:money/features/core/services.dart';
export 'package:money/features/settings/settings.dart';
export 'package:money/features/settings/settings_screen.dart';
export 'package:money/features/settings/themes/font_family.dart';
export 'package:money/features/settings/themes/themes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

/// its not a statelesswidget though. behind the scenes its statefull.
typedef StatelessWidget = ReactiveStatelessWidget;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  // await RM.deleteAllPersistState();
  await RM.storageInitializer(HiveStorage());
  await denormalize();
  runApp(
    App(),
  );
}

Future<void> denormalize() async {
  print('denormalization started');
  print('denormalization completed');
}
