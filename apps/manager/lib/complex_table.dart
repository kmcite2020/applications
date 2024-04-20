import 'package:manager/manager.dart';

class ComplexTable<T> {
  late final Injected<Map<String, T>> injected = RM.inject(
    () => {},
    initialState: {},
    persist: () => PersistState(
      key: key,
      fromJson: (json) async {
        return SynchronousFuture(
          jsonDecode(json).map<String, T>(
            (key, value) => MapEntry(
              key as String,
              fromJson(value),
            ),
          ),
        );
      },
      toJson: (state) {
        toJson(state) => state.toJson();
        return jsonEncode(
          state.map(
            (key, value) => MapEntry<dynamic, dynamic>(
              key,
              toJson(value),
            ),
          ),
        );
      },
    ),
  );
  // ignore: no_leading_underscores_for_local_identifiers
  List<T> call([T? _item]) {
    if (_item != null) {
      state = Map.of(state)..[(_item as dynamic).id] = _item;
    }
    return injected.state.values.toList();
  }

  Map<String, T> get state => injected.state;
  // ignore: no_leading_underscores_for_local_identifiers
  set state(Map<String, T> _state) => injected.state = _state;
  void delete(String key) {
    state = Map.of(state)..remove(key);
  }

  final FromJson<T> fromJson;
  final String key;
  ComplexTable(this.key, {required this.fromJson});

  T get(String id) => state[id]!;
  T? tryGet(String id) => state[id];
}
