// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayShift _$DayShiftFromJson(Map<String, dynamic> json) {
  return _DayShift.fromJson(json);
}

/// @nodoc
mixin _$DayShift {
  Day get day => throw _privateConstructorUsedError;
  Shift get shift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayShiftCopyWith<DayShift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayShiftCopyWith<$Res> {
  factory $DayShiftCopyWith(DayShift value, $Res Function(DayShift) then) =
      _$DayShiftCopyWithImpl<$Res, DayShift>;
  @useResult
  $Res call({Day day, Shift shift});
}

/// @nodoc
class _$DayShiftCopyWithImpl<$Res, $Val extends DayShift>
    implements $DayShiftCopyWith<$Res> {
  _$DayShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? shift = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as Shift,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayShiftImplCopyWith<$Res>
    implements $DayShiftCopyWith<$Res> {
  factory _$$DayShiftImplCopyWith(
          _$DayShiftImpl value, $Res Function(_$DayShiftImpl) then) =
      __$$DayShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Day day, Shift shift});
}

/// @nodoc
class __$$DayShiftImplCopyWithImpl<$Res>
    extends _$DayShiftCopyWithImpl<$Res, _$DayShiftImpl>
    implements _$$DayShiftImplCopyWith<$Res> {
  __$$DayShiftImplCopyWithImpl(
      _$DayShiftImpl _value, $Res Function(_$DayShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? shift = null,
  }) {
    return _then(_$DayShiftImpl(
      null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as Shift,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayShiftImpl with DiagnosticableTreeMixin implements _DayShift {
  const _$DayShiftImpl(this.day, this.shift);

  factory _$DayShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayShiftImplFromJson(json);

  @override
  final Day day;
  @override
  final Shift shift;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayShift(day: $day, shift: $shift)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayShift'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('shift', shift));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayShiftImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.shift, shift) || other.shift == shift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, shift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayShiftImplCopyWith<_$DayShiftImpl> get copyWith =>
      __$$DayShiftImplCopyWithImpl<_$DayShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayShiftImplToJson(
      this,
    );
  }
}

abstract class _DayShift implements DayShift {
  const factory _DayShift(final Day day, final Shift shift) = _$DayShiftImpl;

  factory _DayShift.fromJson(Map<String, dynamic> json) =
      _$DayShiftImpl.fromJson;

  @override
  Day get day;
  @override
  Shift get shift;
  @override
  @JsonKey(ignore: true)
  _$$DayShiftImplCopyWith<_$DayShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
