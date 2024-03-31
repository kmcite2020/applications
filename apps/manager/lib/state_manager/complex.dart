import '../manager.dart';

typedef Emitter<T> = void Function(T newState);
typedef EventRegistrar<Event, State> = FutureOr<void> Function(
  Event event,
  Emitter<State> updater,
);

abstract class Complex<E, T> {
  final _handlers = <Handler>[];
  late final Injected<T> injected = Injected(
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

  T get initialState;

  void register<E>(EventRegistrar<E, T> eventRegistrar) {
    final registered = _handlers.any((handler) => handler.type == E);
    assert(
      !registered,
      'register<$E> was called multiple times.',
    );
    _handlers.add(
      Handler(
        isType: (e) => e is E,
        type: E,
        function: eventRegistrar,
      ),
    );
    log('$E registered.');
  }

  T call([E? event]) {
    if (event != null) {
      final index = _handlers.indexWhere(
        (e) => e.isType(event),
      );
      _handlers[index].function(
        event,
        (newState) {
          return state = newState;
        },
      ) as FutureOr<void>;
      log("${event.runtimeType} called");
    }
    return state;
  }

  T get state => injected.state;
  @visibleForTesting
  set state(T newState) => injected.state = newState;
  bool get canRedo => injected.canRedoState;
  bool get canUndo => injected.canUndoState;
  void undo() => injected.undoState();
  void redo() => injected.redoState();
  bool get persistable => persistor != null;
  Persistor<T>? get persistor => null;
  int get undoStackLength => 0;
  bool get autoDispose => true;
}

// import 'dart:developer';

// abstract class EventRegistrar<E> {
//   register<E>(Eventer<E> eventHandler);
// }

// abstract class StateComplex<T> {
//   T get state;
//   T get initialState;
//   set state(T n);
// }

// abstract class EventAdder<E> {
//   void add<E>(E e);
// }

// class EventHandlerSelen<E> {
//   final bool Function(E) isType;
//   final Type type;
//   final Eventer<E> invoker;
//   const EventHandlerSelen(this.isType, this.type, this.invoker);
// }

// typedef Eventer<E> = void Function(E event);

// abstract class Complex<T, E>
//     implements EventRegistrar<E>, StateComplex<T>, EventAdder<E> {
//   final eventsWithHandlers = <Type, void Function()>{};
//   final events = <Type, EventHandlerSelen<E>>{};
//   late T _state = initialState;
//   @override
//   T get state => _state;
//   @override
//   set state(T newState) {
//     _state = newState;
//   }

//   Complex() {}

//   @override
//   void register<Ev>(Eventer<Ev> eventer) {
//     if (events.containsKey(Ev)) {
//       throw StateError('$Ev already registered');
//     }
//     events[Ev] = EventHandlerSelen(
//       (event) => event is Ev,
//       Ev,
//       eventer as Eventer<E>,
//     );
//     log('$Ev registered');
//   }

//   @override
//   void add<Ev>(Ev event) {
//     final updateRunner = events[Ev];
//     if (updateRunner != null) {
//       updateRunner.invoker(event as E);
//     }
//   }
// }

class CountRM extends Complex<Event, State> {
  CountRM() {
    register<IncrementEvent>(
      (_, o) {
        o(IncrementedState(state() + 1));
      },
    );
    register<DecrementEvent>(
      (_, o) {
        o(DecrementedState(state() - 1));
      },
    );
  }

  @override
  State get initialState => IncrementedState(0);
}

abstract class State {
  call();
}

class IncrementedState extends State {
  final int count;
  IncrementedState(this.count);
  int call() => count;
}

class DecrementedState extends State {
  final int count;
  DecrementedState(this.count);
  int call() => count;
}

class Event {}

class IncrementEvent extends Event {}

class DecrementEvent extends Event {}
