library manager;

export 'package:dynamic_color/dynamic_color.dart';
export 'package:manager/example/manager/manager.dart' hide countRM, CountRM;
export 'package:manager/example/simplicity/simplicity.dart' hide countRM;
export 'package:manager/example/complex/complex.dart' hide countRM, CountRM;
export 'package:manager/state_manager/complex.dart';
export 'package:manager/state_manager/simplicity.dart';

export 'package:uuid/uuid.dart';

export 'dart:async';
export 'dart:convert';
export 'dart:developer';

export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:hive/hive.dart';
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:package_info_plus/package_info_plus.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:manager/state_manager/base.dart';
import 'manager.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'dart:io';
export 'dart:typed_data';
export 'package:colornames/colornames.dart';
export 'extensions.dart';
export 'package:flutter/material.dart' hide Flow;
part 'hive_storage.dart';
part 'state_manager/manager.dart';

part 'ui.dart';
