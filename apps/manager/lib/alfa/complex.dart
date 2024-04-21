import 'dart:developer';

import 'package:manager/manager.dart';

class Complex<E, T> = ComplexBase<E, T>
    with Registerar<E, T>, EventCallable<E, T>;

abstract class ComplexBase<Event, T> extends SimpleBase<T> {
  ComplexBase(
    super.initalValue, {
    Serializer<T>? serializer,
  }) : super(
          key: serializer?.key,
          json: serializer != null
              ? (
                  toJson: (state) {
                    toJson(any) => any.toJson();
                    return jsonEncode(toJson(state));
                  },
                  fromJson: (json) => serializer.fromJson(jsonDecode(json)),
                )
              : null,
        );
  final _handlers = <Handler<Event, T>>[];
}

mixin Registerar<Event, T> on ComplexBase<Event, T> {
  void register<E extends Event>(T Function(E, T) function) {
    final registered = _handlers.any((handler) => handler.type == E);
    if (registered) {
      log('🟥 [$E]');
      return;
    }
    _handlers.add(
      Handler(
        isType: (event) => event is E,
        type: E,
        function: (e, s) => function(e as E, s),
      ),
    );
    log('🟩 [$E]');
  }
}

mixin EventCallable<E, T> on ComplexBase<E, T> {
  T call([E? event]) {
    if (event != null) {
      final index = _handlers.indexWhere((e) => e.isType(event));
      if (index != -1) {
        final function = _handlers[index].function;
        state = function(event, state);
        log('🟩 [$event]');
      } else
        log('🟥 [$event]');
    }
    return state;
  }
}
