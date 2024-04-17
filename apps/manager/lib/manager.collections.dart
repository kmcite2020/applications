part of 'manager.dart';

class ComplexTable<T extends ID> {
  ComplexTable({
    required String key,
    required FromJson<T> fromJson,
  }) {
    final ToJson<T> toJson = (dynamic state) => state.toJson();
    injected = RM.inject(
      () => <String, T>{},
      persist: () => PersistState(
        key: key,
        toJson: (state) {
          final toJsoned = state.map(
            (key, value) => MapEntry(key, toJson(value)),
          );
          return jsonEncode(toJsoned);
        },
        fromJson: (json) {
          final Map<String, T> fromJsoned = (jsonDecode(json)).map(
            (key, value) => MapEntry(
              key as String,
              fromJson(value),
            ),
          );
          return fromJsoned;
        },
      ),
    );
  }

  late final Injected<Map<String, T>> injected;

  void save(T t) {
    state = Map.of(state)..[t.id] = t;
  }

  T? delete(String key) {
    state = Map.of(state)..remove(key);
    Map<String, T> transitMap;
    transitMap = Map.of(state);
    final result = transitMap.remove(key);
    state = transitMap;
    return result;
  }

  T get(String id) => state[id]!;

  T? tryGet(String id) => state[id];

  List<T> call([T? t]) {
    if (t != null) {
      save(t);
    }
    return state.values.toList();
  }

  Map<String, T> get state => injected.state;

  set state(Map<String, T> _state) => injected.state = _state;
}

extension ComplexTableBuilderExtension<T extends ID> on ComplexTable<T> {
  // WIP
  Widget build({
    required String id,
    required Widget child,
  }) {
    return ComplexTableBuilder(
      id: id,
      builder: (item) => child,
      table: this,
    );
  }
}

class ComplexTableBuilder<T extends ID> extends UI {
  const ComplexTableBuilder({
    super.key,
    required this.id,
    required this.builder,
    required this.table,
  });

  final String id;
  final ComplexTable<T> table;
  final Widget Function(T state) builder;

  @override
  Widget build(BuildContext context) {
    final state = table.tryGet(id);
    if (state == null) return Container();
    return builder(state);
  }
}

// abstract class ComplexTable<V extends ID> extends ComplexMap<String, V> {
//   Persistor<V> get valuePersistor;
//   @override
//   Persistor<Map<String, V>>? get persistor {
//     return Persistor(
//       key: valuePersistor.key,
//       toJson: (state) => state.map(
//         (key, value) => MapEntry(
//           key,
//           valuePersistor.toJson(value),
//         ),
//       ),
//       fromJson: (json) => json.map(
//         (key, value) => MapEntry(
//           key,
//           valuePersistor.fromJson(value),
//         ),
//       ),
//     );
//   }

//   void save(V value) {
//     state = Map.of(state)..[value.id] = value;
//   }

//   V? delete(V value) {

//   }

//   void deleteAll() => state = initialState;
//   V get(String id) => state[id]!;
//   V? tryGet(String id) => state[id];

//   List<V> call([V? _value]) {
//     if (_value != null) save(_value);
//     return state.values.toList();
//   }

//   @override
//   String toString() {
//     final buffer = StringBuffer();
//     for (final element in state.entries) {
//       buffer.writeln(element);
//     }
//     return '${buffer.toString()}';
//   }
// }

abstract class ComplexMap<K, V> extends Base<Map<K, V>> {
  String get key;

  Persistor<K> get keyPersistor;

  Persistor<V> get valuePersistor;

  @override
  Map<K, V> get initialState => Map();

  @override
  Persistor<Map<K, V>>? get persistor => Persistor(
        key: key,
        toJson: (Map<K, V> state) => state.map(
          (key, value) => MapEntry(
            jsonEncode(keyPersistor.toJson(key)),
            valuePersistor.toJson(value),
          ),
        ),
        fromJson: (Map<String, dynamic> json) => json.map(
          (key, value) => MapEntry(
            keyPersistor.fromJson(jsonDecode(key)),
            valuePersistor.fromJson(value),
          ),
        ),
      );
}

class ComplexInt extends Base<int> {
  final int initialState;

  ComplexInt(
    this.initialState,
  );

  void increment() => state++;

  void decrement() => state--;
}

class ComplexList<E> extends Base<List<E>> {
  void add(E item) {
    state = List.of(state)..add(item);
  }

  bool remove(E item) {
    final List<E> list = List.of(state);
    final result = list.remove(item);
    state = list;
    return result;
  }

  void insert(int index, E element) {
    state = List.of(state)..insert(index, element);
  }

  late final indexOf = state.indexOf;

  E removeAt(int index) {
    final List<E> list = List.of(state);
    final result = list.removeAt(index);
    state = list;
    return result;
  }

  void insertAt() {}

  @override
  final initialState = [];

  E operator [](int index) => state[index];

  void operator []=(int index, E value) {
    state = state..[index] = value;
  }
}
