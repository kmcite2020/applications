import 'dart:developer';

import 'package:manager/manager.dart';

class ComplexTable<T> extends SimpleBase<Map<String, T>> {
  String name;
  FromJson<T> fromJson;
  ComplexTable(
    this.name,
    this.fromJson,
  ) : super({}) {
    loadTableFromStorage();
  }
  List<T> call([T? _item]) {
    if (_item != null) {
      state = Map.of(state)
        ..[() {
          try {
            final id = (_item as dynamic).id;
            return id;
          } catch (e) {
            throw Exception('No id property defined for $T');
          }
        }()] = _item;
    }
    return state.values.toList();
  }

  void delete(String key) {
    state = Map.of(state)..remove(key);
  }

  @override
  set state(Map<String, T> newValue) {
    super.state = newValue;
    storeTableInStorage();
  }

  T get(String id) => state[id]!;
  T? tryGet(String id) => state[id];

  void loadTableFromStorage() {
    try {
      final json = storage.get(name);
      final Map<String, dynamic> value = jsonDecode(json);
      final decoded = value.map(
        (key, value) => MapEntry(
          key,
          fromJson(value),
        ),
      );
      state = decoded;
    } catch (e) {
      log('🟥 [$e]');
    }
  }

  void storeTableInStorage() {
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
      storage.put(name, jsonEncode(value));
    } catch (e) {
      log('🟥 ${e}');
    }
  }
}
