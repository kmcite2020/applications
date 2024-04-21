// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:manager/manager.dart';

part 'simple.dart';

class Handler<E, State> {
  final bool Function(dynamic) isType;
  final Type type;
  final State Function(E, State) function;
  Handler({
    required this.isType,
    required this.type,
    required this.function,
  });
  @override
  toString() {
    final string = StringBuffer();
    string.writeln(type);
    string.writeln(function);
    return string.toString();
  }
}

class ComplexLegacy<Event, State> {
  ComplexLegacy(
    State initialState, {
    Serializer<State>? serializer,
  }) {
    _injected = RM.inject(
      () => initialState,
      persist: serializer != null
          ? () => PersistState(
                key: serializer.key,
                fromJson: (json) => serializer.fromJson(jsonDecode(json)),
                toJson: (state) => jsonEncode(toJson(state)),
              )
          : null,
    );
  }

  @visibleForTesting
  void setState(State _state) => _injected.state = _state;
  @visibleForTesting
  State getState() => _injected.state;

  late final _injected;

  final _handlers = <Handler<Event, State>>[];
  void register<E extends Event>(State Function(E, State) function) {
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

  State call([Event? event]) {
    if (event != null) {
      final index = _handlers.indexWhere((e) => e.isType(event));
      if (index != -1) {
        final function = _handlers[index].function;
        setState(function(event, getState()));
        log('🟩 [$event]');
      } else
        log('🟥 [$event]');
    }
    return getState();
  }
}

toJson(any) => any.toJson();
