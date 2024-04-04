// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fajr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FajrEvent _$FajrEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _FajrEvent.fromJson(json);
    case 'prayerIncremented':
      return _FajrEventInc.fromJson(json);
    case 'prayerDecremented':
      return _FajrEventDec.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FajrEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FajrEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() prayerIncremented,
    required TResult Function() prayerDecremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? prayerIncremented,
    TResult? Function()? prayerDecremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? prayerIncremented,
    TResult Function()? prayerDecremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FajrEvent value) $default, {
    required TResult Function(_FajrEventInc value) prayerIncremented,
    required TResult Function(_FajrEventDec value) prayerDecremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FajrEvent value)? $default, {
    TResult? Function(_FajrEventInc value)? prayerIncremented,
    TResult? Function(_FajrEventDec value)? prayerDecremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FajrEvent value)? $default, {
    TResult Function(_FajrEventInc value)? prayerIncremented,
    TResult Function(_FajrEventDec value)? prayerDecremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FajrEventCopyWith<$Res> {
  factory $FajrEventCopyWith(FajrEvent value, $Res Function(FajrEvent) then) =
      _$FajrEventCopyWithImpl<$Res, FajrEvent>;
}

/// @nodoc
class _$FajrEventCopyWithImpl<$Res, $Val extends FajrEvent>
    implements $FajrEventCopyWith<$Res> {
  _$FajrEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FajrEventImplCopyWith<$Res> {
  factory _$$FajrEventImplCopyWith(
          _$FajrEventImpl value, $Res Function(_$FajrEventImpl) then) =
      __$$FajrEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FajrEventImplCopyWithImpl<$Res>
    extends _$FajrEventCopyWithImpl<$Res, _$FajrEventImpl>
    implements _$$FajrEventImplCopyWith<$Res> {
  __$$FajrEventImplCopyWithImpl(
      _$FajrEventImpl _value, $Res Function(_$FajrEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FajrEventImpl implements _FajrEvent {
  const _$FajrEventImpl({final String? $type}) : $type = $type ?? 'default';

  factory _$FajrEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$FajrEventImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FajrEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FajrEventImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() prayerIncremented,
    required TResult Function() prayerDecremented,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? prayerIncremented,
    TResult? Function()? prayerDecremented,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? prayerIncremented,
    TResult Function()? prayerDecremented,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FajrEvent value) $default, {
    required TResult Function(_FajrEventInc value) prayerIncremented,
    required TResult Function(_FajrEventDec value) prayerDecremented,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FajrEvent value)? $default, {
    TResult? Function(_FajrEventInc value)? prayerIncremented,
    TResult? Function(_FajrEventDec value)? prayerDecremented,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FajrEvent value)? $default, {
    TResult Function(_FajrEventInc value)? prayerIncremented,
    TResult Function(_FajrEventDec value)? prayerDecremented,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FajrEventImplToJson(
      this,
    );
  }
}

abstract class _FajrEvent implements FajrEvent {
  const factory _FajrEvent() = _$FajrEventImpl;

  factory _FajrEvent.fromJson(Map<String, dynamic> json) =
      _$FajrEventImpl.fromJson;
}

/// @nodoc
abstract class _$$FajrEventIncImplCopyWith<$Res> {
  factory _$$FajrEventIncImplCopyWith(
          _$FajrEventIncImpl value, $Res Function(_$FajrEventIncImpl) then) =
      __$$FajrEventIncImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FajrEventIncImplCopyWithImpl<$Res>
    extends _$FajrEventCopyWithImpl<$Res, _$FajrEventIncImpl>
    implements _$$FajrEventIncImplCopyWith<$Res> {
  __$$FajrEventIncImplCopyWithImpl(
      _$FajrEventIncImpl _value, $Res Function(_$FajrEventIncImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FajrEventIncImpl implements _FajrEventInc {
  const _$FajrEventIncImpl({final String? $type})
      : $type = $type ?? 'prayerIncremented';

  factory _$FajrEventIncImpl.fromJson(Map<String, dynamic> json) =>
      _$$FajrEventIncImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FajrEvent.prayerIncremented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FajrEventIncImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() prayerIncremented,
    required TResult Function() prayerDecremented,
  }) {
    return prayerIncremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? prayerIncremented,
    TResult? Function()? prayerDecremented,
  }) {
    return prayerIncremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? prayerIncremented,
    TResult Function()? prayerDecremented,
    required TResult orElse(),
  }) {
    if (prayerIncremented != null) {
      return prayerIncremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FajrEvent value) $default, {
    required TResult Function(_FajrEventInc value) prayerIncremented,
    required TResult Function(_FajrEventDec value) prayerDecremented,
  }) {
    return prayerIncremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FajrEvent value)? $default, {
    TResult? Function(_FajrEventInc value)? prayerIncremented,
    TResult? Function(_FajrEventDec value)? prayerDecremented,
  }) {
    return prayerIncremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FajrEvent value)? $default, {
    TResult Function(_FajrEventInc value)? prayerIncremented,
    TResult Function(_FajrEventDec value)? prayerDecremented,
    required TResult orElse(),
  }) {
    if (prayerIncremented != null) {
      return prayerIncremented(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FajrEventIncImplToJson(
      this,
    );
  }
}

abstract class _FajrEventInc implements FajrEvent {
  const factory _FajrEventInc() = _$FajrEventIncImpl;

  factory _FajrEventInc.fromJson(Map<String, dynamic> json) =
      _$FajrEventIncImpl.fromJson;
}

/// @nodoc
abstract class _$$FajrEventDecImplCopyWith<$Res> {
  factory _$$FajrEventDecImplCopyWith(
          _$FajrEventDecImpl value, $Res Function(_$FajrEventDecImpl) then) =
      __$$FajrEventDecImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FajrEventDecImplCopyWithImpl<$Res>
    extends _$FajrEventCopyWithImpl<$Res, _$FajrEventDecImpl>
    implements _$$FajrEventDecImplCopyWith<$Res> {
  __$$FajrEventDecImplCopyWithImpl(
      _$FajrEventDecImpl _value, $Res Function(_$FajrEventDecImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FajrEventDecImpl implements _FajrEventDec {
  const _$FajrEventDecImpl({final String? $type})
      : $type = $type ?? 'prayerDecremented';

  factory _$FajrEventDecImpl.fromJson(Map<String, dynamic> json) =>
      _$$FajrEventDecImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FajrEvent.prayerDecremented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FajrEventDecImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() prayerIncremented,
    required TResult Function() prayerDecremented,
  }) {
    return prayerDecremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? prayerIncremented,
    TResult? Function()? prayerDecremented,
  }) {
    return prayerDecremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? prayerIncremented,
    TResult Function()? prayerDecremented,
    required TResult orElse(),
  }) {
    if (prayerDecremented != null) {
      return prayerDecremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FajrEvent value) $default, {
    required TResult Function(_FajrEventInc value) prayerIncremented,
    required TResult Function(_FajrEventDec value) prayerDecremented,
  }) {
    return prayerDecremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FajrEvent value)? $default, {
    TResult? Function(_FajrEventInc value)? prayerIncremented,
    TResult? Function(_FajrEventDec value)? prayerDecremented,
  }) {
    return prayerDecremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FajrEvent value)? $default, {
    TResult Function(_FajrEventInc value)? prayerIncremented,
    TResult Function(_FajrEventDec value)? prayerDecremented,
    required TResult orElse(),
  }) {
    if (prayerDecremented != null) {
      return prayerDecremented(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FajrEventDecImplToJson(
      this,
    );
  }
}

abstract class _FajrEventDec implements FajrEvent {
  const factory _FajrEventDec() = _$FajrEventDecImpl;

  factory _FajrEventDec.fromJson(Map<String, dynamic> json) =
      _$FajrEventDecImpl.fromJson;
}

FajrState _$FajrStateFromJson(Map<String, dynamic> json) {
  return _FajrState.fromJson(json);
}

/// @nodoc
mixin _$FajrState {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FajrStateCopyWith<FajrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FajrStateCopyWith<$Res> {
  factory $FajrStateCopyWith(FajrState value, $Res Function(FajrState) then) =
      _$FajrStateCopyWithImpl<$Res, FajrState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$FajrStateCopyWithImpl<$Res, $Val extends FajrState>
    implements $FajrStateCopyWith<$Res> {
  _$FajrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FajrStateImplCopyWith<$Res>
    implements $FajrStateCopyWith<$Res> {
  factory _$$FajrStateImplCopyWith(
          _$FajrStateImpl value, $Res Function(_$FajrStateImpl) then) =
      __$$FajrStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$FajrStateImplCopyWithImpl<$Res>
    extends _$FajrStateCopyWithImpl<$Res, _$FajrStateImpl>
    implements _$$FajrStateImplCopyWith<$Res> {
  __$$FajrStateImplCopyWithImpl(
      _$FajrStateImpl _value, $Res Function(_$FajrStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$FajrStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FajrStateImpl implements _FajrState {
  const _$FajrStateImpl({this.count = 0});

  factory _$FajrStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FajrStateImplFromJson(json);

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'FajrState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FajrStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FajrStateImplCopyWith<_$FajrStateImpl> get copyWith =>
      __$$FajrStateImplCopyWithImpl<_$FajrStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FajrStateImplToJson(
      this,
    );
  }
}

abstract class _FajrState implements FajrState {
  const factory _FajrState({final int count}) = _$FajrStateImpl;

  factory _FajrState.fromJson(Map<String, dynamic> json) =
      _$FajrStateImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$FajrStateImplCopyWith<_$FajrStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
