part of 'manager.dart';

abstract class Complex<E, S> extends Base<S> {
  Persistor<S>? get persistor => null;
  final _handlers = <Handler>[];
  void register<Event>(
    EventCaller<Event, S> handlerFunction,
  ) {
    final registered = _handlers.any((handler) => handler.type == Event);
    assert(
      !registered,
      'register<$Event> was called multiple times.',
    );
    _handlers.add(
      Handler(
        isType: (e) => e is Event,
        type: Event,
        function: handlerFunction,
      ),
    );
    log('${Event} registered.');
  }

  void _event(E event) {
    final index = _handlers.indexWhere((e) => e.isType(event));
    _handlers[index].function(event) as FutureOr<void>;
    print("${event.runtimeType} called");
  }

  S call([E? _eventTo]) {
    if (_eventTo != null) {
      _event(_eventTo);
    }
    return state;
  }

  S get initialState;
}
