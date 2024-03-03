library manager;

import 'dart:async';
import 'dart:convert';

import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'manager.dart';

export 'package:freezed_annotation/freezed_annotation.dart';
export 'dart:io';
export 'dart:typed_data';
export 'package:colornames/colornames.dart';
export 'package:extensions/main.dart';
export 'package:flutter/material.dart';
part 'hive_storage.dart';
part 'model.dart';
part 'state_manager/manager.dart';
part 'state_manager/complex.dart';
part 'state_manager/simple.dart';

part 'ui.dart';
part 'manager.freezed.dart';
