import 'dart:convert';

import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;
import 'package:states_rebuilder/states_rebuilder.dart';

import 'manager.dart';
import 'persistor.dart';
export 'package:flutter/material.dart' hide StatelessWidget;
part 'cubit.dart';
part '_ui.dart';
part '_rm.dart';

abstract class RM<T> {
  static final navigate = rebuilder.RM.navigate;

  static void build(Widget app) {
    runApp(app);
  }

  // ignore: library_private_types_in_public_api
  static _RM<T> inject<T>(
    T state, {
    Changed<T>? onChanged,
    bool? autoDispose,
  }) =>
      _RM<T>(
        state,
        onChanged: onChanged,
        autoDispose: autoDispose,
      );
}
