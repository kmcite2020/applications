import 'dart:convert';

import 'package:manager/hive_storage.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;

import '../model.dart';
import 'manager.dart';
export 'package:flutter/material.dart' hide StatelessWidget, State;

typedef Transition<State> = void Function(State oldState, State newState);

class RM<T> {
  static final navigate = rebuilder.RM.navigate;
  static final scaffold = rebuilder.RM.scaffold;

  static void build(Widget app) async {
    await rebuilder.RM.storageInitializer(HiveStorage());
    // await rebuilder.RM.deleteAllPersistState();
    runApp(app);
  }
}

abstract class Manager<T> {
  T get state => injected.state;
  set state(T newState) => injected.state = newState;
  bool get persistable => persistor != null;
  Persistor<T>? get persistor {
    return null;
  }

  bool get autoDispose => true;
  Transition<T>? get onTransition => null;
  int get undoStackLength => 0;
  bool get canRedo => injected.canRedoState;
  bool get canUndo => injected.canUndoState;
  void undo() => injected.undoState();
  void redo() => injected.redoState();
  T call([T? newState]) {
    if (newState != null) {
      onTransition?.call(state, newState);
      state = newState;
    }
    return state;
  }

  late final Injected<T> injected = Injected(
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
