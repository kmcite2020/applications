import 'dart:async';
import 'dart:developer';
import 'package:manager/manager.dart';

typedef JSON<T> = ({String Function(T) toJson, T Function(String) fromJson});

abstract class SimpleBase<T> {
  final String? key;
  final JSON<T>? json;
  SimpleBase(
    T initalState, {
    this.key,
    this.json,
  }) {
    _state = initalState;
    if (json != null && key != null) {
      final stringFrom = storage.get(key);
      if (stringFrom != null) {
        final loadedState = json!.fromJson(stringFrom);
        _state = loadedState;
        log('state loaded from storage successfully for $runtimeType');
      } else {
        log('first time state is not stored for $runtimeType');
      }
    } else {
      log('not serializable state for $runtimeType');
    }
    _controller ??= StreamController.broadcast();
    subscription = stream.listen(_setState);
  }
  late T _state;
  late StreamSubscription<T> subscription;
  StreamController<T>? _controller;
  StreamController<T> get controller {
    return _controller!;
  }

  Stream<T> get stream => controller.stream;
  bool get hasListeners => controller.hasListener;
  T get state {
    if (ReactiveUI.instance != null) {
      ReactiveUI.instance!.addListener(this);
    }
    return _state;
  }

  set state(T newState) {
    if (json != null && key != null) {
      final stringify = json!.toJson(newState);
      storage.put(key, stringify);
      log('state saved successfully for $runtimeType');
    } else {
      log('not serializable state');
    }
    controller.sink.add(_state);
  }

  void _setState(T newState) => _state = newState;

  FutureOr<void> close() {
    subscription.cancel();
    return _controller?.close();
  }
}
