import 'package:manager/manager.dart';

abstract class StateGetter<T> {
  T get state;
}

abstract class StateSetter<T> {
  set state(T newState);
}

abstract class InitialState<T> {
  T get initialState;
}

abstract class Callable<T> {
  T call([T? newState]);
}

abstract class _R_M_<T> {
  Injected<T> get injected;
}

abstract class Manager<T>
    implements
        _R_M_<T>,
        InitialState<T>,
        StateGetter<T>,
        StateSetter<T>,
        Callable<T> {
  @override
  late Injected<T> injected = RM.inject(() => initialState);

  T get initialState;

  @override
  T get state => injected.state;
  @override
  set state(T newState) {
    injected
      ..notify()
      ..setState((_) => newState);
  }

  @override
  T call([T? newState]) {
    if (newState != null) state = newState;
    return state;
  }
}

class _ManagerImpl<T> extends Manager<T> {
  final T value;

  _ManagerImpl(this.value) {
    initialState = value;
  }

  @override
  late final T initialState;
}

Manager<T> manager<T>(T value) => _ManagerImpl(value);

final countRM = manager(0);

// class CountRM extends Manager<int> {
//   @override
//   final int initialState = 0;
//   void inc() => state++;
//   void dec() => state--;
// }
