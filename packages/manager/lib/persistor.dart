class Persistor<T> {
  final String key;
  final ToJson<T> toJson;
  final FromJson<T> fromJson;

  Persistor({
    required this.key,
    required this.toJson,
    required this.fromJson,
  });
}

typedef ToJson<T> = Map<String, dynamic> Function(T state);
typedef FromJson<T> = T Function(Map<String, dynamic> json);
