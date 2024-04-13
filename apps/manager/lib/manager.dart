library manager;

import 'dart:developer';

import 'manager.dart';

export 'dart:async';
export 'dart:convert';
export 'dart:typed_data';

export 'package:flutter/material.dart';
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
part 'manager.collection.dart';

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
        final getByKey = storage.get(persistor!.key);
        var decodedByJson = jsonDecode(getByKey);
        final persistentState = persistor!.fromJson(decodedByJson);
        return persistentState;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  set state(S newState) {
    if (persistor != null) {
      final key = persistor!.key;
      final value = persistor!.toJson(newState);
      storage.put(key, jsonEncode(value));
    }
    injected.state = Capsule(newState);
  }

  void reset() => state = initialState;
  @override
  String toString() => '$S $state';
}

class Simple<S> extends Base<S> {
  @override
  final S initialState;
  Simple(this.initialState, {this.persistor});
  S call([S? _state]) => _state != null ? state = _state : state;
  @override
  final Persistor<S>? persistor;
}

abstract class Manager<S> extends Base<S> {
  S call([S? _state]) => _state != null ? state = _state : state;
}
