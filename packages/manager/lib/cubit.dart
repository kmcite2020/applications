part of 'manager.dart';

abstract class Cubit<State> {
  State get initialState;
  bool get autoDispose => true;
  Transition<State>? get onTransition => null;
  Persistor<State>? get persistor => null;
  int get undoStackLength => 0;
  late final inj = rebuilder.Injected(
    creator: () => initialState,
    persist: persistor != null
        ? () {
            return rebuilder.PersistState(
              key: persistor!.key,
              toJson: (state) => jsonEncode(persistor!.toJson(state)),
              fromJson: (json) => persistor!.fromJson(jsonDecode(json)),
            );
          }
        : null,
    autoDisposeWhenNotUsed: autoDispose,
    undoStackLength: undoStackLength,
  );

  State get state => inj.state;
  set state(State newState) => inj.state = newState;

  State call([
    State? newState,
  ]) {
    if (newState != null) {
      onTransition?.call(state, newState);
      state = newState;
    }
    return state;
  }
}
