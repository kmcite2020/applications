part of 'manager.dart';

class ComplexCollection<V extends ID> extends ComplexMap<String, V> {
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

class ComplexMap<K, V> extends Base<Map<K, V>> {
  @override
  Map<K, V> get initialState => Map();
}

class ComplexInt extends Base<int> {
  @override
  int get initialState => 0;
  void increment() => state++;
  void decrement() => state--;
}

class ComplexList<E> extends Base<List<E>> {
  void add(E item) {
    state = List.of(state..add(item));
  }

  bool remove(E item) {
    final List<E> list = state;
    final result = list.remove(item);
    state = list;
    return result;
  }

  void insert() {}
  late final indexOf = state.indexOf;

  void removeAt() {}
  void insertAt() {}

  @override
  final initialState = [];
  E operator [](int index) => state[index];

  void operator []=(int index, E value) {
    state = state..[index] = value;
  }
}
