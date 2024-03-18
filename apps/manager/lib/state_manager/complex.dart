// // ignore_for_file: avoid_shadowing_type_parameters, avoid_print

// part of '../manager.dart';

// typedef Emitter<T> = void Function(T newState);
// typedef EventRegistrar<Event, State> = FutureOr<void> Function(
//   Event event,
//   Emitter<State> updater,
// );

// abstract class Complex<E, T> {
//   final _handlers = <Handler>[];
//   late final Injected<T> injected = Injected(
//     creator: () => initialState,
//     autoDisposeWhenNotUsed: autoDispose,
//     persist: persistable
//         ? () => PersistState(
//               key: persistor!.key,
//               toJson: (state) => jsonEncode(persistor!.toJson(state)),
//               fromJson: (json) => persistor!.fromJson(jsonDecode(json)),
//             )
//         : null,
//     undoStackLength: undoStackLength,
//   );

//   T get initialState;

//   void register<E>(EventRegistrar<E, T> eventRegistrar) {
//     final registered = _handlers.any((handler) => handler.type == E);
//     assert(
//       !registered,
//       'register<$E> was called multiple times.',
//     );
//     _handlers.add(
//       Handler(
//         isType: (e) => e is E,
//         type: E,
//         function: eventRegistrar,
//       ),
//     );
//     log('$E registered.');
//   }

//   T call([E? event]) {
//     if (event != null) {
//       final index = _handlers.indexWhere(
//         (e) => e.isType(event),
//       );
//       _handlers[index].function(
//         event,
//         (newState) {
//           return state = newState;
//         },
//       ) as FutureOr<void>;
//       log("${event.runtimeType} called");
//     }
//     return state;
//   }

//   T get state => injected.state;
//   @visibleForTesting
//   set state(T newState) => injected.state = newState;
//   bool get canRedo => injected.canRedoState;
//   bool get canUndo => injected.canUndoState;
//   void undo() => injected.undoState();
//   void redo() => injected.redoState();
//   bool get persistable => persistor != null;
//   Persistor<T>? get persistor => null;
//   int get undoStackLength => 0;
//   bool get autoDispose => true;
// }
