// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyTime _$StudyTimeFromJson(Map<String, dynamic> json) {
  return _StudyTime.fromJson(json);
}

/// @nodoc
mixin _$StudyTime {
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyTimeCopyWith<StudyTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyTimeCopyWith<$Res> {
  factory $StudyTimeCopyWith(StudyTime value, $Res Function(StudyTime) then) =
      _$StudyTimeCopyWithImpl<$Res, StudyTime>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$StudyTimeCopyWithImpl<$Res, $Val extends StudyTime>
    implements $StudyTimeCopyWith<$Res> {
  _$StudyTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyTimeImplCopyWith<$Res>
    implements $StudyTimeCopyWith<$Res> {
  factory _$$StudyTimeImplCopyWith(
          _$StudyTimeImpl value, $Res Function(_$StudyTimeImpl) then) =
      __$$StudyTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$StudyTimeImplCopyWithImpl<$Res>
    extends _$StudyTimeCopyWithImpl<$Res, _$StudyTimeImpl>
    implements _$$StudyTimeImplCopyWith<$Res> {
  __$$StudyTimeImplCopyWithImpl(
      _$StudyTimeImpl _value, $Res Function(_$StudyTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$StudyTimeImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyTimeImpl implements _StudyTime {
  const _$StudyTimeImpl({this.duration = Duration.zero});

  factory _$StudyTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyTimeImplFromJson(json);

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'StudyTime(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyTimeImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyTimeImplCopyWith<_$StudyTimeImpl> get copyWith =>
      __$$StudyTimeImplCopyWithImpl<_$StudyTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyTimeImplToJson(
      this,
    );
  }
}

abstract class _StudyTime implements StudyTime {
  const factory _StudyTime({final Duration duration}) = _$StudyTimeImpl;

  factory _StudyTime.fromJson(Map<String, dynamic> json) =
      _$StudyTimeImpl.fromJson;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$StudyTimeImplCopyWith<_$StudyTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
