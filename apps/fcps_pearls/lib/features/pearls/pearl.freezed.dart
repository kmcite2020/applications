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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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

/// @nodoc
mixin _$PearlsEvent {
  Pearl get pearl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) save,
    required TResult Function(Pearl pearl) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? save,
    TResult? Function(Pearl pearl)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? save,
    TResult Function(Pearl pearl)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventSave value) save,
    required TResult Function(_PearlsEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventSave value)? save,
    TResult? Function(_PearlsEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventSave value)? save,
    TResult Function(_PearlsEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PearlsEventCopyWith<PearlsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlsEventCopyWith<$Res> {
  factory $PearlsEventCopyWith(
          PearlsEvent value, $Res Function(PearlsEvent) then) =
      _$PearlsEventCopyWithImpl<$Res, PearlsEvent>;
  @useResult
  $Res call({Pearl pearl});

  $PearlCopyWith<$Res> get pearl;
}

/// @nodoc
class _$PearlsEventCopyWithImpl<$Res, $Val extends PearlsEvent>
    implements $PearlsEventCopyWith<$Res> {
  _$PearlsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearl = null,
  }) {
    return _then(_value.copyWith(
      pearl: null == pearl
          ? _value.pearl
          : pearl // ignore: cast_nullable_to_non_nullable
              as Pearl,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PearlCopyWith<$Res> get pearl {
    return $PearlCopyWith<$Res>(_value.pearl, (value) {
      return _then(_value.copyWith(pearl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PearlsEventSaveImplCopyWith<$Res>
    implements $PearlsEventCopyWith<$Res> {
  factory _$$PearlsEventSaveImplCopyWith(_$PearlsEventSaveImpl value,
          $Res Function(_$PearlsEventSaveImpl) then) =
      __$$PearlsEventSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pearl pearl});

  @override
  $PearlCopyWith<$Res> get pearl;
}

/// @nodoc
class __$$PearlsEventSaveImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventSaveImpl>
    implements _$$PearlsEventSaveImplCopyWith<$Res> {
  __$$PearlsEventSaveImplCopyWithImpl(
      _$PearlsEventSaveImpl _value, $Res Function(_$PearlsEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearl = null,
  }) {
    return _then(_$PearlsEventSaveImpl(
      null == pearl
          ? _value.pearl
          : pearl // ignore: cast_nullable_to_non_nullable
              as Pearl,
    ));
  }
}

/// @nodoc

class _$PearlsEventSaveImpl implements _PearlsEventSave {
  const _$PearlsEventSaveImpl(this.pearl);

  @override
  final Pearl pearl;

  @override
  String toString() {
    return 'PearlsEvent.save(pearl: $pearl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsEventSaveImpl &&
            (identical(other.pearl, pearl) || other.pearl == pearl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pearl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsEventSaveImplCopyWith<_$PearlsEventSaveImpl> get copyWith =>
      __$$PearlsEventSaveImplCopyWithImpl<_$PearlsEventSaveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) save,
    required TResult Function(Pearl pearl) delete,
  }) {
    return save(pearl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? save,
    TResult? Function(Pearl pearl)? delete,
  }) {
    return save?.call(pearl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? save,
    TResult Function(Pearl pearl)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(pearl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventSave value) save,
    required TResult Function(_PearlsEventDelete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventSave value)? save,
    TResult? Function(_PearlsEventDelete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventSave value)? save,
    TResult Function(_PearlsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventSave implements PearlsEvent {
  const factory _PearlsEventSave(final Pearl pearl) = _$PearlsEventSaveImpl;

  @override
  Pearl get pearl;
  @override
  @JsonKey(ignore: true)
  _$$PearlsEventSaveImplCopyWith<_$PearlsEventSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PearlsEventDeleteImplCopyWith<$Res>
    implements $PearlsEventCopyWith<$Res> {
  factory _$$PearlsEventDeleteImplCopyWith(_$PearlsEventDeleteImpl value,
          $Res Function(_$PearlsEventDeleteImpl) then) =
      __$$PearlsEventDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pearl pearl});

  @override
  $PearlCopyWith<$Res> get pearl;
}

/// @nodoc
class __$$PearlsEventDeleteImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventDeleteImpl>
    implements _$$PearlsEventDeleteImplCopyWith<$Res> {
  __$$PearlsEventDeleteImplCopyWithImpl(_$PearlsEventDeleteImpl _value,
      $Res Function(_$PearlsEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearl = null,
  }) {
    return _then(_$PearlsEventDeleteImpl(
      null == pearl
          ? _value.pearl
          : pearl // ignore: cast_nullable_to_non_nullable
              as Pearl,
    ));
  }
}

/// @nodoc

class _$PearlsEventDeleteImpl implements _PearlsEventDelete {
  const _$PearlsEventDeleteImpl(this.pearl);

  @override
  final Pearl pearl;

  @override
  String toString() {
    return 'PearlsEvent.delete(pearl: $pearl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsEventDeleteImpl &&
            (identical(other.pearl, pearl) || other.pearl == pearl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pearl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsEventDeleteImplCopyWith<_$PearlsEventDeleteImpl> get copyWith =>
      __$$PearlsEventDeleteImplCopyWithImpl<_$PearlsEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) save,
    required TResult Function(Pearl pearl) delete,
  }) {
    return delete(pearl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? save,
    TResult? Function(Pearl pearl)? delete,
  }) {
    return delete?.call(pearl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? save,
    TResult Function(Pearl pearl)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(pearl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventSave value) save,
    required TResult Function(_PearlsEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventSave value)? save,
    TResult? Function(_PearlsEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventSave value)? save,
    TResult Function(_PearlsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventDelete implements PearlsEvent {
  const factory _PearlsEventDelete(final Pearl pearl) = _$PearlsEventDeleteImpl;

  @override
  Pearl get pearl;
  @override
  @JsonKey(ignore: true)
  _$$PearlsEventDeleteImplCopyWith<_$PearlsEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
