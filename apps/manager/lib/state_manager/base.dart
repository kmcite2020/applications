import 'package:manager/manager.dart';
import 'package:manager/state_manager/capsule.dart';

abstract class InitialOf<State> {
  State get initialState;
}

abstract class ReactivityIntegrated {
  ReactiveModel get injected;
}

abstract class GetterOf<State> {
  State get state;
}

abstract class SetterOf<State> {
  set state(State newState);
}

abstract class Base<State>
    implements
        InitialOf<State>,
        ReactivityIntegrated,
        GetterOf<State>,
        SetterOf<State> {
  Base() {
    injected = Capsule(initialState).inj(
      autoDisposeWhenNotUsed: false,
    );
  }
  @override
  State get initialState;

  @override
  late final injected;

  @override
  State get state => injected.state.value;
  @override
  set state(State newState) => injected.state = Capsule(newState);
}
