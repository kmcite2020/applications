import 'package:manager/manager.dart';

abstract class CollectionBase<V extends ID> extends Base<Map<String, V>> {
  void save(V value) => state = Map.of(state)..[value.id] = value;
  V? delete(V value) {
    Map<String, V> transitMap;
    transitMap = Map.of(state);
    print(state);
    final result = transitMap.remove(value.id);
    state = transitMap;
    print(state);
    return result;
  }

  void deleteAll() => state = initialState;
  V get(String id) => state[id]!;
  V? tryGet(String id) => state[id];

  /// use it to get list of the collection or save / update the value
  /// multi-tasker api
  List<V> call([V? _value]) {
    if (_value != null) save(_value);
    return state.values.toList();
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    for (var element in state.entries) {
      buffer.writeln(element);
    }
    return '${buffer.toString()}';
  }
}

class ComplexCollection<V extends ID> extends CollectionBase<V> {
  final Map<String, V> initialState;
  ComplexCollection([Map<String, V>? value]) : initialState = value ?? Map();
}
