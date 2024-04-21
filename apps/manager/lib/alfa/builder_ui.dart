import 'dart:async';
import 'package:manager/manager.dart';

@sealed
class ReactiveUI<T> {
  SimpleBase<T?> uiRM = Complex(null);

  static ReactiveUI? instance;

  final Map<SimpleBase, List<StreamSubscription>> _subscriptions = {};

  Map<SimpleBase, List<StreamSubscription>> get subscriptions => _subscriptions;

  bool get canUpdate => subscriptions.isNotEmpty;

  void addListener(SimpleBase<T> listenerRM) {
    if (!_subscriptions.containsKey(listenerRM)) {
      final StreamSubscription subscription =
          listenerRM.stream.listen(uiRM.controller.add);
      final listSubscriptions = _subscriptions[listenerRM] ?? [];
      listSubscriptions.add(subscription);
      _subscriptions[listenerRM] = listSubscriptions;
    }
  }

  StreamSubscription<T?> listen(
    void Function(T? nullableState) listener,
  ) =>
      uiRM.stream.listen(listener);

  FutureOr<void> close() async {
    for (final listOfSubscriptions in _subscriptions.values) {
      for (final subscription in listOfSubscriptions) {
        await subscription.cancel();
      }
    }
    _subscriptions.clear();
    return uiRM.close();
  }
}
