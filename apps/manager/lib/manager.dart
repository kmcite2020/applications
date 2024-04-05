library manager;

export 'package:manager/utilities/navigator.dart';
export 'manager.dart';
export 'state_manager/simplicity.dart';
export 'package:manager/state_manager/handler.dart' show Capsule, Handler;
export 'package:dynamic_color/dynamic_color.dart';
export 'package:manager/state_manager/complex.dart' show Complex;
export 'package:manager/state_manager/simplicity.dart' show Simplicity;
export 'package:uuid/uuid.dart';
export 'dart:async';
export 'dart:convert';
export 'dart:developer';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:flutter/foundation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:manager/state_manager/base.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'dart:io';
export 'dart:typed_data';
export 'package:colornames/colornames.dart';
export 'utilities/extensions.dart'
    show
        ID,
        randomID,
        WidgetExtensions,
        DynamicExtensions,
        CapitalizerX,
        DateTimeExtensions,
        MaterialColorConverter,
        Uint8ListConvertor;
export 'package:flutter/material.dart' hide Flow, Page;
export 'utilities/hive_storage.dart' show HiveStorage;
export 'utilities/ui.dart' show UI, TopUI, Page;
import 'manager.dart';

abstract class Manager<State> extends Base<State>
    implements CallableForStateOnly<State> {
  State get initialState;
  State call([State? newState]) {
    if (newState != null) {
      state = newState;
    }
    return state;
  }
}

/// its tricky
/// because you maybe provided with a stream
/// you can only read it.
/// you can not provide side effects from here
/// the stream provider shoud give a way to add events to the stream
///
///

class StreamBase<T> extends Base<T?> {
  final Stream<T> Function() creator;
  StreamSubscription<T>? subscription;
  StreamBase(
    this.creator, {
    this.initialState,
  }) {
    state = initialState;
    subscription = creator().listen(
      setState,
      onDone: dispose,
      onError: (_, __) => dispose(),
    );
  }
  @override
  void dispose() {
    super.dispose();
    subscription?.cancel();
    subscription = null;
  }

  @override
  final T? initialState;
  T call() => state!;
}
