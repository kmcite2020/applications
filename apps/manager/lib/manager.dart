library manager;

import 'dart:async';

import 'package:package_info_plus/package_info_plus.dart';

import 'manager.dart';

export 'dart:convert';

export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:manager/complex_table.dart';
export 'package:manager/serializer.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
export 'extensions.dart';
export 'hive_storage.dart';
export 'complex.dart';
export 'complex_map.dart';
export 'top_ui.dart';

late Box storage;
Future<void> initStorage() async {
  final info = await PackageInfo.fromPlatform();
  await Hive.initFlutter();
  storage = await Hive.openBox(info.appName);
}

void runApplication(Widget app) async {
  await initStorage();
  await RM.storageInitializer(HiveStorage());
  runApp(app);
}

extension SimpleExtension<T> on T {
  Simple<T> alive([
    _SimpleReaction Function(SimpleBase<T>)? reactionCallback,
  ]) =>
      Simple<T>(this, reactionCallback);
}

extension SimpleBooleanExtension on SimpleBase<bool> {
  void toggle() {
    state = !state;
  }
}

class Observer<T> {
  SimpleBase<T?> subject = Simple(null);
  static Observer? proxy;
  final Map<SimpleBase, List<StreamSubscription>> _subscriptions = {};
  Map<SimpleBase, List<StreamSubscription>> get subscriptions => _subscriptions;
  bool get canUpdate => subscriptions.isNotEmpty;
  void addListener(SimpleBase<T> rx) {
    if (!_subscriptions.containsKey(rx)) {
      final StreamSubscription subs = rx.stream.listen(subject.controller.add);
      final listSubscriptions = _subscriptions[rx] ?? [];
      listSubscriptions.add(subs);
      _subscriptions[rx] = listSubscriptions;
    }
  }

  StreamSubscription<T?> listen(void Function(T?) _) {
    return subject.stream.listen(_);
  }

  FutureOr<void> close() async {
    for (final e in _subscriptions.values) {
      for (final subs in e) {
        await subs.cancel();
      }
    }
    _subscriptions.clear();
    return subject.close();
  }
}

class SimpleBase<T> {
  SimpleBase(
    T initalState, [
    _SimpleReaction Function(SimpleBase<T> simple)? reactionCallback,
  ]) {
    _state = initalState;
    reactionCallback?.call(this);
  }
  late T _state;
  StreamController<T>? _controller;

  StreamController<T> get controller {
    _controller ??= StreamController.broadcast();
    return _controller!;
  }

  Stream<T> get stream => controller.stream;
  bool get hasListeners => controller.hasListener;

  set state(T newValue) {
    if (_state != newValue) {
      _state = newValue;
      controller.sink.add(_state);
    }
  }

  T get state {
    if (Observer.proxy != null) {
      Observer.proxy!.addListener(this);
    }
    return _state;
  }

  FutureOr<void> close() => _controller?.close();
}

class Simple<T> extends SimpleBase<T> {
  Simple(
    T initalState, [
    _SimpleReaction Function(SimpleBase<T> simple)? reactionCallback,
  ]) : super(initalState, reactionCallback);
  T get value => state;
  T get data => state;
  T call([T? newState]) {
    if (newState != null) {
      state = newState;
    }
    return state;
  }

  set value(T newValue) => state = newValue;
  set data(T newData) => state = newData;
}

class _Builder extends UI {
  const _Builder(this.builder, {super.key});
  final Widget Function() builder;
  @override
  Widget build(BuildContext context) => builder();
}

abstract class UI extends StatefulWidget {
  const factory UI.create(Widget Function() builder, {Key? key}) = _Builder;
  const UI({super.key});

  Widget build(BuildContext context);

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  _UIState() {
    _observer = Observer();
  }

  Observer? _observer;
  late StreamSubscription _subscription;
  bool _afterFirstLayout = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      _afterFirstLayout = true;
    });
    _subscription = _observer!.listen(_rebuild);
  }

  @override
  void dispose() {
    _afterFirstLayout = false;
    _subscription.cancel();
    if (_observer?.canUpdate ?? false) {
      _observer?.close();
    }

    super.dispose();
  }

  void _rebuild(_) {
    if (_afterFirstLayout && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final observer = Observer.proxy;

    Observer.proxy = _observer;
    final result = widget.build(context);
    if (!_observer!.canUpdate) {
      throw Exception('[$widget] -> No Simples found');
    }
    Observer.proxy = observer;
    return result;
  }
}

extension SimpleExtensions<T> on SimpleBase<T> {
  /// [callback] is called every time that the [Rx<T>] changes.
  ///
  /// If [condition] is not null the [callback] only is called if [condition] returns true.
  _SimpleReaction ever(void Function(T) callback,
      {bool Function(T)? condition}) {
    final StreamSubscription subscription = stream.listen((event) {
      if (condition != null) {
        if (condition(event)) {
          callback(event);
        }
      } else {
        callback(event);
      }
    });
    return _SimpleReaction(subscription, null);
  }

  /// the [callback] will be executed only 1 time
  ///
  /// If [condition] is not null the [callback] only is called if [condition] returns true.
  _SimpleReaction once(void Function(T) callback,
      {bool Function(T)? condition}) {
    late _SimpleReaction reaction;
    // ignore: cancel_subscriptions
    StreamSubscription subscription = stream.listen((event) {
      if (condition != null) {
        if (condition(event)) {
          callback(event);
          reaction.dispose();
        }
      } else {
        callback(event);
        reaction.dispose();
      }
    });
    return reaction = _SimpleReaction(subscription, null);
  }

  /// the [callback] will be called every certain time interval ignoring the other changes
  _SimpleReaction interval(Duration duration, void Function(T) callback) {
    var debouncer = _Debouncer(duration);
    // ignore: cancel_subscriptions
    final StreamSubscription subscription = stream.listen((event) {
      if (!debouncer.isRunning) {
        debouncer.call(() {
          callback(event);
          debouncer = _Debouncer(duration);
        });
      }
    });
    return _SimpleReaction(subscription, debouncer);
  }

  /// Every time that the [Rx<T>] changes the [callback] will be called after a delay.
  _SimpleReaction debounce(Duration delay, void Function(T) callback) {
    final debouncer = _Debouncer(delay);
    // ignore: cancel_subscriptions
    final StreamSubscription subscription = stream.listen((event) {
      debouncer.call(() {
        callback(event);
      });
    });
    return _SimpleReaction(subscription, debouncer);
  }
}

class _SimpleReaction {
  _SimpleReaction(this._subscription, this._debouncer);

  final StreamSubscription _subscription;
  final _Debouncer? _debouncer;
  bool _disposed = false;

  Future<void> dispose() async {
    if (_disposed) return;
    _debouncer?.cancel();
    await _subscription.cancel();
    _disposed = true;
  }
}

class _Debouncer {
  _Debouncer(this.delay);
  final Duration delay;
  Timer? _timer;

  void call(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  bool get isRunning => _timer?.isActive ?? false;
  void cancel() => _timer?.cancel();
}

final GlobalKey<NavigatorState> navigator = GlobalKey();

Future<T?> to<T extends Object?>(Widget page) {
  return navigator.currentState!.push(
    MaterialPageRoute(
      builder: (_) => page,
    ),
  );
}

void back<T extends Object?>([T? result]) {
  return navigator.currentState!.pop(result);
}
