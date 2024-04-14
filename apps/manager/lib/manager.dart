library manager;

import 'dart:io';

import 'manager.dart';

export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'dart:developer';
export 'dart:async';
export 'dart:convert';
export 'dart:typed_data';
export 'package:colornames/colornames.dart';
export 'package:flutter/material.dart' hide Flow;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
part 'manager.extensions.dart';
part 'manager.g.dart';
part 'manager.complex.dart';
part 'manager.ui.dart';
part 'manager.handler.dart';
part 'manager.freezed.dart';
part 'manager.collections.dart';
part 'manager.experiments.dart';

abstract class Base<S> {
  Base() {
    injected = Injected<Capsule<S>>(
      creator: () => Capsule(getFromStorage() ?? initialState),
      autoDisposeWhenNotUsed: false,
    );
  }
  S get initialState;
  Persistor<S>? get persistor => null;
  late final injected;

  S get state => injected.state.value;

  S? getFromStorage() {
    try {
      if (persistor != null) {
        return persistor!.fromJson(
          jsonDecode(
            storage.get(persistor!.key),
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  set state(S newState) {
    if (persistor != null) {
      storage.put(
        persistor!.key,
        jsonEncode(
          persistor!.toJson(newState),
        ),
      );
    }
    injected.state = Capsule(newState);
  }

  void setState(S _state) => state = _state;

  void reset() => state = initialState;
  @override
  String toString() => '$S $state';
}

class Simple<T> extends Manager<T> {
  @override
  final T initialState;
  Simple(
    this.initialState, {
    this.persistor,
  });
  @override
  final Persistor<T>? persistor;
}

abstract class Manager<T> extends Base<T> {
  T call([T? _state]) => _state != null ? state = _state : state;
}
