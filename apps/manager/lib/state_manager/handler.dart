import '../manager.dart';

part 'handler.freezed.dart';

typedef TypeChecker = bool Function(dynamic);

@freezed
class Handler with _$Handler {
  const factory Handler({
    required final TypeChecker isType,
    required final Type type,
    required final Function function,
  }) = _Handler;
}
