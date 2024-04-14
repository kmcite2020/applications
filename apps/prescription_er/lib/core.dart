import 'package:prescription_er/main.dart';

class ComplexTable<T extends ID> {
  ComplexTable({
    required String key,
    required FromJson<T> fromJson,
  }) {
    Map<String, dynamic> toJson(dynamic s) => s.toJson();
    injected = RM.inject(
      () => <String, T>{},
      persist: () => PersistState(
        key: key,
        toJson: (state) {
          return jsonEncode(
            state.map(
              (key, value) => MapEntry(
                key,
                toJson(value),
              ),
            ),
          );
        },
        fromJson: (json) => jsonDecode(json).map(
          (key, value) => MapEntry(
            key,
            fromJson(value),
          ),
        ),
      ),
    );
  }
  late final Injected<Map<String, T>> injected;
  void save(T t) {
    injected.state = Map.of(injected.state)..[t.id] = t;
  }

  void delete(String key) {
    injected.state = Map.of(injected.state)..remove(key);
  }

  T get(String id) => injected.state[id]!;
  T? tryGet(String id) => injected.state[id];

  List<T> call() => injected.state.values.toList();
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
