// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Persistor<T> {
  String get key => throw _privateConstructorUsedError;
  ToJson<T> get toJson => throw _privateConstructorUsedError;
  FromJson<T> get fromJson => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersistorCopyWith<T, Persistor<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistorCopyWith<T, $Res> {
  factory $PersistorCopyWith(
          Persistor<T> value, $Res Function(Persistor<T>) then) =
      _$PersistorCopyWithImpl<T, $Res, Persistor<T>>;
  @useResult
  $Res call({String key, ToJson<T> toJson, FromJson<T> fromJson});
}

/// @nodoc
class _$PersistorCopyWithImpl<T, $Res, $Val extends Persistor<T>>
    implements $PersistorCopyWith<T, $Res> {
  _$PersistorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? toJson = null,
    Object? fromJson = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      toJson: null == toJson
          ? _value.toJson
          : toJson // ignore: cast_nullable_to_non_nullable
              as ToJson<T>,
      fromJson: null == fromJson
          ? _value.fromJson
          : fromJson // ignore: cast_nullable_to_non_nullable
              as FromJson<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersistorImplCopyWith<T, $Res>
    implements $PersistorCopyWith<T, $Res> {
  factory _$$PersistorImplCopyWith(
          _$PersistorImpl<T> value, $Res Function(_$PersistorImpl<T>) then) =
      __$$PersistorImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String key, ToJson<T> toJson, FromJson<T> fromJson});
}

/// @nodoc
class __$$PersistorImplCopyWithImpl<T, $Res>
    extends _$PersistorCopyWithImpl<T, $Res, _$PersistorImpl<T>>
    implements _$$PersistorImplCopyWith<T, $Res> {
  __$$PersistorImplCopyWithImpl(
      _$PersistorImpl<T> _value, $Res Function(_$PersistorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? toJson = null,
    Object? fromJson = null,
  }) {
    return _then(_$PersistorImpl<T>(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      toJson: null == toJson
          ? _value.toJson
          : toJson // ignore: cast_nullable_to_non_nullable
              as ToJson<T>,
      fromJson: null == fromJson
          ? _value.fromJson
          : fromJson // ignore: cast_nullable_to_non_nullable
              as FromJson<T>,
    ));
  }
}

/// @nodoc

class _$PersistorImpl<T> implements _Persistor<T> {
  const _$PersistorImpl(
      {required this.key, required this.toJson, required this.fromJson});

  @override
  final String key;
  @override
  final ToJson<T> toJson;
  @override
  final FromJson<T> fromJson;

  @override
  String toString() {
    return 'Persistor<$T>(key: $key, toJson: $toJson, fromJson: $fromJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersistorImpl<T> &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.toJson, toJson) || other.toJson == toJson) &&
            (identical(other.fromJson, fromJson) ||
                other.fromJson == fromJson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, toJson, fromJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersistorImplCopyWith<T, _$PersistorImpl<T>> get copyWith =>
      __$$PersistorImplCopyWithImpl<T, _$PersistorImpl<T>>(this, _$identity);
}

abstract class _Persistor<T> implements Persistor<T> {
  const factory _Persistor(
      {required final String key,
      required final ToJson<T> toJson,
      required final FromJson<T> fromJson}) = _$PersistorImpl<T>;

  @override
  String get key;
  @override
  ToJson<T> get toJson;
  @override
  FromJson<T> get fromJson;
  @override
  @JsonKey(ignore: true)
  _$$PersistorImplCopyWith<T, _$PersistorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Handler {
  TypeChecker get isType => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  Function get function => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HandlerCopyWith<Handler> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandlerCopyWith<$Res> {
  factory $HandlerCopyWith(Handler value, $Res Function(Handler) then) =
      _$HandlerCopyWithImpl<$Res, Handler>;
  @useResult
  $Res call({TypeChecker isType, Type type, Function function});
}

/// @nodoc
class _$HandlerCopyWithImpl<$Res, $Val extends Handler>
    implements $HandlerCopyWith<$Res> {
  _$HandlerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isType = null,
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_value.copyWith(
      isType: null == isType
          ? _value.isType
          : isType // ignore: cast_nullable_to_non_nullable
              as TypeChecker,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as Function,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandlerImplCopyWith<$Res> implements $HandlerCopyWith<$Res> {
  factory _$$HandlerImplCopyWith(
          _$HandlerImpl value, $Res Function(_$HandlerImpl) then) =
      __$$HandlerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeChecker isType, Type type, Function function});
}

/// @nodoc
class __$$HandlerImplCopyWithImpl<$Res>
    extends _$HandlerCopyWithImpl<$Res, _$HandlerImpl>
    implements _$$HandlerImplCopyWith<$Res> {
  __$$HandlerImplCopyWithImpl(
      _$HandlerImpl _value, $Res Function(_$HandlerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isType = null,
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_$HandlerImpl(
      isType: null == isType
          ? _value.isType
          : isType // ignore: cast_nullable_to_non_nullable
              as TypeChecker,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$HandlerImpl implements _Handler {
  const _$HandlerImpl(
      {required this.isType, required this.type, required this.function});

  @override
  final TypeChecker isType;
  @override
  final Type type;
  @override
  final Function function;

  @override
  String toString() {
    return 'Handler(isType: $isType, type: $type, function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandlerImpl &&
            (identical(other.isType, isType) || other.isType == isType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.function, function) ||
                other.function == function));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isType, type, function);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandlerImplCopyWith<_$HandlerImpl> get copyWith =>
      __$$HandlerImplCopyWithImpl<_$HandlerImpl>(this, _$identity);
}

abstract class _Handler implements Handler {
  const factory _Handler(
      {required final TypeChecker isType,
      required final Type type,
      required final Function function}) = _$HandlerImpl;

  @override
  TypeChecker get isType;
  @override
  Type get type;
  @override
  Function get function;
  @override
  @JsonKey(ignore: true)
  _$$HandlerImplCopyWith<_$HandlerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
