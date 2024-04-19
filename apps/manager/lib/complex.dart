// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:manager/manager.dart';

typedef Setup<E, T> = void Function(Registerar<E, T>);
typedef Registeree<E, T> = T Function(E, T);
typedef Registerar<E, T> = void Function<E>(Registeree<E, T>);

class Complex<E, T> {
  final Map<Type, void Function(E)> events = {};
  final T initialState;
  final Serializer<T>? serializer;
  Complex(
    this.initialState, {
    required Setup<E, T> setup,
    this.serializer,
  }) {
    setup(_register);
  }

  void _register<E>(Registeree<E, T> registeree) {
    events[E] = (event) {
      final newState = registeree(event as E, state);
      state = newState;
    };
    log('$E registered');
  }

  T call([E? event]) {
    if (event != null) {
      final registeredEvent = events[event.runtimeType];
      if (registeredEvent != null) {
        registeredEvent(event);
      }
    }
    return state;
  }

  late final injected = RM.inject(
    () => initialState,
    persist: serializer != null
        ? () => PersistState(
              key: serializer!.key,
              fromJson: (json) => serializer!.fromJson(jsonDecode(json)),
              toJson: (state) => jsonEncode(___(state)),
            )
        : null,
  );
  set state(T _state) => injected.state = _state;
  T get state => injected.state;
}

___(____) => ____.toJson();
