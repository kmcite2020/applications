import 'package:manager/state_manager/base.dart';

abstract class CollectionBase<V extends ID> extends Base<Map<String, V>> {
  void save(V value) => state = Map.of(state)..[value.id] = value;
  void delete(V value) => state = Map.of(state)..remove(value.id);
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

abstract class ID {
  String get id;
}

class ComplexCollection<V extends ID> extends CollectionBase<V> {
  final Map<String, V> initialState;
  ComplexCollection([Map<String, V>? value]) : initialState = value ?? Map();
}
