import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

typedef ToJson<T> = Map<String, dynamic> Function(T state);
typedef FromJson<T> = T Function(Map<String, dynamic> json);
typedef TypeChecker = bool Function(dynamic);

@freezed
class Persistor<T> with _$Persistor<T> {
  const factory Persistor({
    required final String key,
    required final ToJson<T> toJson,
    required final FromJson<T> fromJson,
  }) = _Persistor<T>;
}

@freezed
class Handler with _$Handler {
  const factory Handler({
    required final TypeChecker isType,
    required final Type type,
    required final Function function,
  }) = _Handler;
}
