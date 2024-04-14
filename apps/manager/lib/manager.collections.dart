part of 'manager.dart';

abstract class ComplexTable<V extends ID> extends ComplexMap<String, V> {
  Persistor<V> get valuePersistor;
  @override
  Persistor<Map<String, V>>? get persistor {
    return Persistor(
      key: valuePersistor.key,
      toJson: (state) => state.map(
        (key, value) => MapEntry(
          key,
          valuePersistor.toJson(value),
        ),
      ),
      fromJson: (json) => json.map(
        (key, value) => MapEntry(
          key,
          valuePersistor.fromJson(value),
        ),
      ),
    );
  }

  void save(V value) {
    state = Map.of(state)..[value.id] = value;
  }

  V? delete(V value) {
    Map<String, V> transitMap;
    transitMap = Map.of(state);
    final result = transitMap.remove(value.id);
    state = transitMap;
    return result;
  }

  void deleteAll() => state = initialState;
  V get(String id) => state[id]!;
  V? tryGet(String id) => state[id];

  List<V> call([V? _value]) {
    if (_value != null) save(_value);
    return state.values.toList();
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    for (final element in state.entries) {
      buffer.writeln(element);
    }
    return '${buffer.toString()}';
  }
}

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
