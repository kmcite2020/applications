import 'package:manager/manager.dart';

typedef ToJson<T> = Map<String, dynamic> Function(T state);
typedef FromJson<T> = T Function(Map<String, dynamic> json);

abstract class InitialOf<State> {
  State get initialState;
}

abstract class ReactivityIntegrated {
  Injected get injected;
}

abstract class GetterOf<State> {
  State get state;
}

abstract class SetterOf<State> {
  set state(State newState);
}

abstract class Disposable {
  bool get autoDispose;
  void dispose();
}

abstract class Base<State>
    implements
        InitialOf<State>,
        ReactivityIntegrated,
        Disposable,
        GetterOf<State>,
        SetterOf<State> {
  Base() {
    injected = Injected(
      creator: () => Capsule(initialState),
      autoDisposeWhenNotUsed: autoDispose,
    );
  }
  @override
  bool get autoDispose => true;
  @override
  dispose() => injected.dispose();

  @override
  State get initialState;

  @override
  late final injected;

  @override
  State get state => injected.state.value;
  @override
  set state(State newState) => injected.state = Capsule(newState);
  void setState(newState) => state = newState;
  late final initializeState = injected.initializeState;
}
