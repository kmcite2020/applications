part of 'manager.dart';

abstract class CollectionBase<V extends ID> extends Base<Map<String, V>> {
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

  void deleteAll() => state = _initialState;
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
