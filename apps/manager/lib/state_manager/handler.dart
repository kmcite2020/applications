import '../manager.dart';

part 'handler.freezed.dart';
// part 'handler.g.dart';

typedef TypeChecker = bool Function(dynamic);

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
