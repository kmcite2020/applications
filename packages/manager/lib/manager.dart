import 'dart:convert';

import 'package:manager/hive_storage.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;

import 'manager.dart';
import 'persistor.dart';
export 'package:flutter/material.dart' hide StatelessWidget, State;
part 'ui.dart';

typedef Transition<State> = void Function(State oldState, State newState);

class RM<State> {
  static Simple<T> inject<T>(
    T state, {
    Transition<T>? onTransition,
    bool? autoDispose,
    int? undoStackLength,
    Persistor<T>? persistor,
  }) =>
      Simple(
        state,
        onTransition,
        autoDispose,
        undoStackLength,
        persistor,
      );
  static final navigate = rebuilder.RM.navigate;
  static final scaffold = rebuilder.RM.scaffold;

  static void build(Widget app) async {
    await rebuilder.RM.storageInitializer(HiveStorage());
    runApp(app);
  }
}

class Simple<T> with CubitInterface<T> {
  final T _initialState;
  final Transition<T>? _onTransition;
  final bool? _autoDispose;
  final int? _undoStackLength;
  final Persistor<T>? _persistor;
  Simple(this._initialState, this._onTransition, this._autoDispose,
      this._undoStackLength, this._persistor);
  @override
  T get initialState => _initialState;
  @override
  Transition<T>? get onTransition => _onTransition;
  @override
  bool get autoDispose => _autoDispose ?? super.autoDispose;
  @override
  int get undoStackLength => _undoStackLength ?? super.undoStackLength;
  @override
  Persistor<T>? get persistor => _persistor;
}

abstract class Cubit<T> with CubitInterface<T> {}

mixin CubitInterface<T> {
  Transition<T>? get onTransition => null;
  bool get autoDispose => true;
  Persistor<T>? get persistor => null;
  bool get persistable => persistor != null;
  int get undoStackLength => 0;
  T get state => inj.state;
  set state(T newState) => inj.state = newState;
  T call([
    T? newState,
  ]) {
    if (newState != null) {
      onTransition?.call(state, newState);
      state = newState;
    }
    return state;
  }

  bool get canRedo => inj.canRedoState;
  bool get canUndo => inj.canUndoState;
  void undo() => inj.undoState();
  void redo() => inj.redoState();
  late final Injected<T> inj = Injected(
    creator: () => initialState,
    autoDisposeWhenNotUsed: autoDispose,
    persist: persistable
        ? () => rebuilder.PersistState(
              key: persistor!.key,
              toJson: (state) => jsonEncode(persistor!.toJson(state)),
              fromJson: (json) => persistor!.fromJson(jsonDecode(json)),
            )
        : null,
    undoStackLength: undoStackLength,
  );
  T get initialState;
}
