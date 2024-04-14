part of 'manager.dart';

typedef TypeChecker = bool Function(dynamic);
typedef FromJson<T> = T Function(Map<String, dynamic> json);
typedef ToJson<T> = Map<String, dynamic> Function(T state);
typedef Emitter<T> = void Function(T newState);
typedef EventCaller<Event, State> = FutureOr<void> Function(Event event);

@freezed
class Persistor<T> with _$Persistor<T> {
  const factory Persistor({
    required String key,
    required ToJson<T> toJson,
    required FromJson<T> fromJson,
  }) = _Persistor<T>;
  factory Persistor.freezed({
    required String key,
    required FromJson<T> fromJson,
  }) {
    Map<String, dynamic> toJson<T>(state) => state.toJson();
    return Persistor(
      key: key,
      toJson: toJson,
      fromJson: fromJson,
    );
  }
  factory Persistor.list(
    String key, {
    required List<T> values,
  }) {
    return Persistor(
      key: key,
      toJson: (state) {
        return {key: values.indexOf(state)};
      },
      fromJson: (json) {
        return values[json[key] ?? 0];
      },
    );
  }
}

@freezed
class Handler with _$Handler {
  const factory Handler({
    required final TypeChecker isType,
    required final Type type,
    required final Function function,
  }) = _Handler;
}

@freezed
class Capsule<T> with _$Capsule {
  const factory Capsule(T value) = _Capsule;
}

@freezed
class Count with _$Count {
  const factory Count(int value) = _Count;
  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}
