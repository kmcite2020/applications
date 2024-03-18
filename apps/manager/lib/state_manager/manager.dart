part of '../manager.dart';

// typedef Transition<State> = void Function(State oldState, State newState);

// class SN<T> {
//   static final navigate = RM.navigate;
//   static final scaffold = RM.scaffold;
// }

// abstract class Manager<T> {
//   T get state => injected.state;
//   set state(T newState) => injected.state = newState;
//   bool get persistable => persistor != null;
//   Persistor<T>? get persistor {
//     return null;
//   }

//   bool get autoDispose => false;
//   Transition<T>? get onTransition => null;
//   int get undoStackLength => 0;
//   bool get canRedo => injected.canRedoState;
//   bool get canUndo => injected.canUndoState;
//   void undo() => injected.undoState();
//   void redo() => injected.redoState();
//   T call([T? newState]) {
//     if (newState != null) {
//       onTransition?.call(state, newState);
//       state = newState;
//     }
//     return state;
//   }

//   late final Injected<T> injected = Injected(
//     creator: () => initialState,
//     autoDisposeWhenNotUsed: autoDispose,
//     persist: persistable
//         ? () {
//             return PersistState(
//               key: persistor!.key,
//               toJson: (state) => jsonEncode(persistor!.toJson(state)),
//               fromJson: (json) => persistor!.fromJson(jsonDecode(json)),
//             );
//           }
//         : null,
//     undoStackLength: undoStackLength,
//   );
//   T get initialState;
// }
