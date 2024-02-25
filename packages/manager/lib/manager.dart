import 'dart:convert';

import 'package:manager/hive_storage.dart';
import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;

import 'manager.dart';
import 'persistor.dart';
export 'package:flutter/material.dart' hide StatelessWidget;
part 'cubit.dart';
part '_ui.dart';
part '_rm.dart';

abstract class RM<T> {
  static final navigate = rebuilder.RM.navigate;
  static final scaffold = rebuilder.RM.scaffold;

  static void build(Widget app) async {
    await rebuilder.RM.storageInitializer(HiveStorage());
    runApp(app);
  }

  // ignore: library_private_types_in_public_api
  static _RM<T> inject<T>(
    T state, {
    Transition<T>? onChanged,
    bool? autoDispose,
  }) =>
      _RM<T>(
        state,
        onChanged: onChanged,
        autoDispose: autoDispose,
      );
}
