// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pearl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pearl _$PearlFromJson(Map<String, dynamic> json) {
  return _Pearl.fromJson(json);
}

/// @nodoc
mixin _$Pearl {
  String get id => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PearlCopyWith<Pearl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlCopyWith<$Res> {
  factory $PearlCopyWith(Pearl value, $Res Function(Pearl) then) =
      _$PearlCopyWithImpl<$Res, Pearl>;
  @useResult
  $Res call({String id, String statement, String answer, String explanation});
}

/// @nodoc
class _$PearlCopyWithImpl<$Res, $Val extends Pearl>
    implements $PearlCopyWith<$Res> {
  _$PearlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlImplCopyWith<$Res> implements $PearlCopyWith<$Res> {
  factory _$$PearlImplCopyWith(
          _$PearlImpl value, $Res Function(_$PearlImpl) then) =
      __$$PearlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String statement, String answer, String explanation});
}

/// @nodoc
class __$$PearlImplCopyWithImpl<$Res>
    extends _$PearlCopyWithImpl<$Res, _$PearlImpl>
    implements _$$PearlImplCopyWith<$Res> {
  __$$PearlImplCopyWithImpl(
      _$PearlImpl _value, $Res Function(_$PearlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explanation = null,
  }) {
    return _then(_$PearlImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PearlImpl implements _Pearl {
  const _$PearlImpl(
      {this.id = '',
      this.statement = '',
      this.answer = '',
      this.explanation = ''});

  factory _$PearlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PearlImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String explanation;

  @override
  String toString() {
    return 'Pearl(id: $id, statement: $statement, answer: $answer, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, statement, answer, explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      __$$PearlImplCopyWithImpl<_$PearlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PearlImplToJson(
      this,
    );
  }
}

abstract class _Pearl implements Pearl {
  const factory _Pearl(
      {final String id,
      final String statement,
      final String answer,
      final String explanation}) = _$PearlImpl;

  factory _Pearl.fromJson(Map<String, dynamic> json) = _$PearlImpl.fromJson;

  @override
  String get id;
  @override
  String get statement;
  @override
  String get answer;
  @override
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pearls _$PearlsFromJson(Map<String, dynamic> json) {
  return _Pearls.fromJson(json);
}

/// @nodoc
mixin _$Pearls {
  Map<String, Pearl> get pearlsCache => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PearlsCopyWith<Pearls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlsCopyWith<$Res> {
  factory $PearlsCopyWith(Pearls value, $Res Function(Pearls) then) =
      _$PearlsCopyWithImpl<$Res, Pearls>;
  @useResult
  $Res call({Map<String, Pearl> pearlsCache, bool loading});
}

/// @nodoc
class _$PearlsCopyWithImpl<$Res, $Val extends Pearls>
    implements $PearlsCopyWith<$Res> {
  _$PearlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearlsCache = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      pearlsCache: null == pearlsCache
          ? _value.pearlsCache
          : pearlsCache // ignore: cast_nullable_to_non_nullable
              as Map<String, Pearl>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlsImplCopyWith<$Res> implements $PearlsCopyWith<$Res> {
  factory _$$PearlsImplCopyWith(
          _$PearlsImpl value, $Res Function(_$PearlsImpl) then) =
      __$$PearlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Pearl> pearlsCache, bool loading});
}

/// @nodoc
class __$$PearlsImplCopyWithImpl<$Res>
    extends _$PearlsCopyWithImpl<$Res, _$PearlsImpl>
    implements _$$PearlsImplCopyWith<$Res> {
  __$$PearlsImplCopyWithImpl(
      _$PearlsImpl _value, $Res Function(_$PearlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearlsCache = null,
    Object? loading = null,
  }) {
    return _then(_$PearlsImpl(
      pearlsCache: null == pearlsCache
          ? _value._pearlsCache
          : pearlsCache // ignore: cast_nullable_to_non_nullable
              as Map<String, Pearl>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PearlsImpl extends _Pearls {
  const _$PearlsImpl(
      {final Map<String, Pearl> pearlsCache = const <String, Pearl>{},
      this.loading = false})
      : _pearlsCache = pearlsCache,
        super._();

  factory _$PearlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PearlsImplFromJson(json);

  final Map<String, Pearl> _pearlsCache;
  @override
  @JsonKey()
  Map<String, Pearl> get pearlsCache {
    if (_pearlsCache is EqualUnmodifiableMapView) return _pearlsCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pearlsCache);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'Pearls(pearlsCache: $pearlsCache, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsImpl &&
            const DeepCollectionEquality()
                .equals(other._pearlsCache, _pearlsCache) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pearlsCache), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsImplCopyWith<_$PearlsImpl> get copyWith =>
      __$$PearlsImplCopyWithImpl<_$PearlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PearlsImplToJson(
      this,
    );
  }
}

abstract class _Pearls extends Pearls {
  const factory _Pearls(
      {final Map<String, Pearl> pearlsCache,
      final bool loading}) = _$PearlsImpl;
  const _Pearls._() : super._();

  factory _Pearls.fromJson(Map<String, dynamic> json) = _$PearlsImpl.fromJson;

  @override
  Map<String, Pearl> get pearlsCache;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$PearlsImplCopyWith<_$PearlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
