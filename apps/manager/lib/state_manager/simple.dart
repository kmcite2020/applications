part of '../manager.dart';

class Simple<T> {
  final Persistor<T>? persistor;
  final T initialState;
  final bool autoDispose;

  final Transition<T>? onTransition;
  final int undoStackLength;
  Simple(
    this.initialState, {
    this.persistor,
    this.autoDispose = false,
    this.onTransition,
    this.undoStackLength = 0,
  }) {
    inj = Injected(
      creator: () => initialState,
      autoDisposeWhenNotUsed: autoDispose,
      persist: persistable
          ? () => PersistState(
                key: persistor!.key,
                toJson: (state) => jsonEncode(persistor!.toJson(state)),
                fromJson: (json) => persistor!.fromJson(jsonDecode(json)),
              )
          : null,
      undoStackLength: undoStackLength,
    );
  }

  T get state => inj.state;
  set state(T newState) {
    // print('old before change: ${state}');
    // print('new before change: ${newState}');
    inj.state = newState;
    // print('old after change: ${state}');
    // print('new after change: ${newState}');
  }

  bool get persistable => persistor != null;
  bool get canRedo => inj.canRedoState;
  bool get canUndo => inj.canUndoState;
  void undo() => inj.undoState();
  void redo() => inj.redoState();
  T call([T? newState]) {
    if (newState != null) {
      onTransition?.call(state, newState);
      state = newState;
    }
    return state;
  }

  late Injected<T> inj;
  @override
  String toString() => "$state";
}
