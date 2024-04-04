// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RosterEntry _$RosterEntryFromJson(Map<String, dynamic> json) {
  return _RosterEntry.fromJson(json);
}

/// @nodoc
mixin _$RosterEntry {
  ShiftType get shiftType => throw _privateConstructorUsedError;
  DayType get dayType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShiftType shiftType, DayType dayType) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShiftType shiftType, DayType dayType)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShiftType shiftType, DayType dayType)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RosterEntry value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RosterEntry value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RosterEntry value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RosterEntryCopyWith<RosterEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosterEntryCopyWith<$Res> {
  factory $RosterEntryCopyWith(
          RosterEntry value, $Res Function(RosterEntry) then) =
      _$RosterEntryCopyWithImpl<$Res, RosterEntry>;
  @useResult
  $Res call({ShiftType shiftType, DayType dayType});
}

/// @nodoc
class _$RosterEntryCopyWithImpl<$Res, $Val extends RosterEntry>
    implements $RosterEntryCopyWith<$Res> {
  _$RosterEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftType = null,
    Object? dayType = null,
  }) {
    return _then(_value.copyWith(
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RosterEntryImplCopyWith<$Res>
    implements $RosterEntryCopyWith<$Res> {
  factory _$$RosterEntryImplCopyWith(
          _$RosterEntryImpl value, $Res Function(_$RosterEntryImpl) then) =
      __$$RosterEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShiftType shiftType, DayType dayType});
}

/// @nodoc
class __$$RosterEntryImplCopyWithImpl<$Res>
    extends _$RosterEntryCopyWithImpl<$Res, _$RosterEntryImpl>
    implements _$$RosterEntryImplCopyWith<$Res> {
  __$$RosterEntryImplCopyWithImpl(
      _$RosterEntryImpl _value, $Res Function(_$RosterEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftType = null,
    Object? dayType = null,
  }) {
    return _then(_$RosterEntryImpl(
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RosterEntryImpl implements _RosterEntry {
  const _$RosterEntryImpl({required this.shiftType, required this.dayType});

  factory _$RosterEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RosterEntryImplFromJson(json);

  @override
  final ShiftType shiftType;
  @override
  final DayType dayType;

  @override
  String toString() {
    return 'RosterEntry.create(shiftType: $shiftType, dayType: $dayType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterEntryImpl &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType) &&
            (identical(other.dayType, dayType) || other.dayType == dayType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shiftType, dayType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RosterEntryImplCopyWith<_$RosterEntryImpl> get copyWith =>
      __$$RosterEntryImplCopyWithImpl<_$RosterEntryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShiftType shiftType, DayType dayType) create,
  }) {
    return create(shiftType, dayType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShiftType shiftType, DayType dayType)? create,
  }) {
    return create?.call(shiftType, dayType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShiftType shiftType, DayType dayType)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(shiftType, dayType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RosterEntry value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RosterEntry value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RosterEntry value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RosterEntryImplToJson(
      this,
    );
  }
}

abstract class _RosterEntry implements RosterEntry {
  const factory _RosterEntry(
      {required final ShiftType shiftType,
      required final DayType dayType}) = _$RosterEntryImpl;

  factory _RosterEntry.fromJson(Map<String, dynamic> json) =
      _$RosterEntryImpl.fromJson;

  @override
  ShiftType get shiftType;
  @override
  DayType get dayType;
  @override
  @JsonKey(ignore: true)
  _$$RosterEntryImplCopyWith<_$RosterEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
