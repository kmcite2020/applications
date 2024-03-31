library manager;

export 'package:uuid/uuid.dart';

export 'dart:async';
export 'dart:convert';
export 'dart:developer';

export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:hive/hive.dart';
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:package_info_plus/package_info_plus.dart';
import 'manager.dart';

export 'package:freezed_annotation/freezed_annotation.dart';
export 'dart:io';
export 'dart:typed_data';
export 'package:colornames/colornames.dart';
export 'extensions.dart';

export 'package:flutter/material.dart' hide Flow;
part 'hive_storage.dart';
part 'model.dart';
part 'state_manager/manager.dart';
// part 'state_manager/complex.dart';
// part 'state_manager/simple.dart';

part 'ui.dart';
part 'manager.freezed.dart';
