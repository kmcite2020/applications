import 'package:manager/state_manager/base.dart';

import '../manager.dart';
import 'handler.dart';

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
  void register<Event>(EventRegistrar<Event, State> eventRegistrar);
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
  void register<E>(EventRegistrar<E, T> eventRegistrar) {
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
    addLog('$E registered.');
  }
}

typedef Emitter<T> = void Function(T newState);
typedef EventRegistrar<E, T> = FutureOr<void> Function(E event);

final _logs = <String>[];

List<String> get logs => _logs.take(5).toList();

addLog(String _log) {
  log(_log);
  _logs.add(_log);
}
