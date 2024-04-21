library manager;

import 'package:package_info_plus/package_info_plus.dart';

import 'manager.dart';

export 'dart:convert';

export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:manager/complex_table.dart';
export 'package:manager/serializer.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

export 'alfa/complex.dart';
export 'alfa/ui.dart';
export 'alfa/simplicity.dart';
export 'alfa/builder_ui.dart';
export 'extensions.dart';
export 'hive_storage.dart';
export 'manager.dart';
export 'complex.dart';
export 'complex_map.dart';
export 'top_ui.dart';

late Box storage;
Future<void> initStorage() async {
  final info = await PackageInfo.fromPlatform();
  await Hive.initFlutter();
  storage = await Hive.openBox(info.appName);
}

void run(Widget app) async {
  await initStorage();
  runApp(app);
}
