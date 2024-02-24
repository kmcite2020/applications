// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

part of 'manager.dart';

class _RM<State> {
  late final rebuilder.Injected<State> injected = rebuilder.Injected(
    creator: () => initialState,
    autoDisposeWhenNotUsed: autoDispose ?? true,
  );
  State initialState;

  bool? autoDispose;

  State get state => injected.state;
  set state(State _state) => injected.state = _state;

  _RM(
    this.initialState, {
    this.onChanged,
    this.autoDispose,
  });

  State call([
    State? _state,
  ]) {
    if (_state != null) {
      onChanged?.call(state, _state);
      state = _state;
    }
    return state;
  }

  final Changed<State>? onChanged;
}

typedef Changed<State> = void Function(State oldState, State newState);
