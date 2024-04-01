import 'package:manager/state_manager/base.dart';

import '../manager.dart';

abstract class AdderOf<Event> {
  void add(Event newEvent);
}

abstract class CallableForComplexState<Event, State> {
  State call([Event? newEvent]);
}

abstract class HandlersListOfComplex {
  List<Handler> get handlers;
}

abstract class RegistrarOfEvents<State> {
  void register<Event>(EventRegistrarV2<Event, State> eventRegistrar);
}

abstract class Complex<E, T> extends Base<T>
    implements
        HandlersListOfComplex,
        CallableForComplexState<E, T>,
        AdderOf<E>,
        RegistrarOfEvents<T> {
  @override
  final List<Handler> handlers = [];

  @override
  T get initialState;

  @override
  T call([E? newEvent]) {
    if (newEvent != null) add(newEvent);
    return state;
  }

  @override
  void add(E newEvent) {
    final index = handlers.indexWhere(
      (e) => e.isType(newEvent),
    );
    handlers[index].function(newEvent) as FutureOr<void>;
    log("${newEvent.runtimeType} called");
  }

  @override
  void register<E>(EventRegistrarV2<E, T> eventRegistrar) {
    final registered = handlers.any((handler) => handler.type == E);
    assert(
      !registered,
      'register<$E> was called multiple times.',
    );
    handlers.add(
      Handler(
        isType: (e) => e is E,
        type: E,
        function: eventRegistrar,
      ),
    );
    log('$E registered.');
  }
}

typedef Emitter<T> = void Function(T newState);
typedef EventRegistrar<Event, State> = FutureOr<void> Function(
  Event event,
  Emitter<State> updater,
);
typedef EventRegistrarV2<E, T> = FutureOr<void> Function(Event event);

class CountRM extends Complex<Event, int> {
  CountRM() {
    register<IncrementEvent>(
      (_) {
        state = state += 1;
      },
    );
    register<DecrementEvent>(
      (
        _,
      ) {
        state = state -= 1;
      },
    );
  }

  @override
  int get initialState => 0;
}

class Event {}

class IncrementEvent extends Event {}

class DecrementEvent extends Event {}
