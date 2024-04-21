import 'dart:developer';
import 'package:manager/manager.dart';

class ComplexMap<K, V> extends SimpleBase<Map<K, V>> {
  ComplexMap({
    Map<K, V> Function()? creator,
    required this.serializer,
  }) : super(creator?.call() ?? {}) {
    load();
  }

  void load() {
    try {
      final json = storage.get(serializer.name);
      final Map<String, dynamic> value = jsonDecode(json);
      final decoded = value.map(
        (key, value) => MapEntry(
          serializer.key(jsonDecode(key)),
          serializer.value(value),
        ),
      );
      state = decoded;
    } catch (e) {
      log('🟥 [$e]');
    }
  }

  save() {
    Map<String, dynamic> toJson(any) {
      if (any is String) {
        return any.toJson();
      }
      return any.toJson();
    }

    final value = state.map(
      (key, value) => MapEntry(
        jsonEncode(toJson(key)),
        toJson(value),
      ),
    );
    try {
      storage.put(serializer.name, jsonEncode(value));
    } catch (e) {
      log('🟥 ${e}');
    }
  }

  @override
  set state(Map<K, V> newState) {
    super.state = newState;
    save();
  }

  final MapSerializer<K, V> serializer;
  Map<K, V> call([MapEntry<K, V>? entry]) {
    if (entry != null) {
      state = Map.of(state)..[entry.key] = entry.value;
    }
    return state;
  }

  void delete(MapEntry<K, V> entry) {
    state = Map.of(state)..remove(entry.key);
  }
}
