// ignore_for_file: unused_result, unused_element

part of 'manager.dart';

typedef UI = rebuilder.ReactiveStatelessWidget;
typedef StatelessWidget = UI;

class _Injected<T> {
  final Injected<T> injected;
  late final call = injected.call;
  late T state = injected.state;
  late final of = injected.of;
  late final inherited = injected.inherited;
  late final reInherited = injected.reInherited;
  late final get = injected.call;
  late final stateAsync = injected.stateAsync;
  late final onAll = injected.onAll;
  late final onOrElse = injected.onOrElse;
  late final dispose = injected.dispose;

  _Injected(this.injected) {
    injected.canRedoState;
    injected.canUndoState;
    injected.customStatus;
    injected.error;
    injected.rebuild;
    // injected.state;
    // injected.stateAsync;
    injected.subscription;
    injected.snapState;
    injected.customStatus;
    injected.hasData;
    injected.hasError;
    injected.hasObservers;
    injected.isDone;
    injected.isIdle;
    injected.isWaiting;
    // injected.inherited;
    // injected.reInherited;
    injected.addCleaner;
    injected.addObserver;
    injected.cleanState;
    injected.clearUndoStack;
    injected.deletePersistState;
    injected.dispose;
    injected.disposeIfNotUsed;
    injected.initializeState;
    // injected.of;
    injected.notify;
    injected.onAll;
    injected.onOrElse;
    injected.persistState;
    injected.refresh;
    injected.setState;
  }
}
