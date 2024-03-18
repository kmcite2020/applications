// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_taking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizTakingState _$QuizTakingStateFromJson(Map<String, dynamic> json) {
  return _QuizTakingState.fromJson(json);
}

/// @nodoc
mixin _$QuizTakingState {
  Quiz? get quiz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizTakingStateCopyWith<QuizTakingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizTakingStateCopyWith<$Res> {
  factory $QuizTakingStateCopyWith(
          QuizTakingState value, $Res Function(QuizTakingState) then) =
      _$QuizTakingStateCopyWithImpl<$Res, QuizTakingState>;
  @useResult
  $Res call({Quiz? quiz});

  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class _$QuizTakingStateCopyWithImpl<$Res, $Val extends QuizTakingState>
    implements $QuizTakingStateCopyWith<$Res> {
  _$QuizTakingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = freezed,
  }) {
    return _then(_value.copyWith(
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res>? get quiz {
    if (_value.quiz == null) {
      return null;
    }

    return $QuizCopyWith<$Res>(_value.quiz!, (value) {
      return _then(_value.copyWith(quiz: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizTakingStateImplCopyWith<$Res>
    implements $QuizTakingStateCopyWith<$Res> {
  factory _$$QuizTakingStateImplCopyWith(_$QuizTakingStateImpl value,
          $Res Function(_$QuizTakingStateImpl) then) =
      __$$QuizTakingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Quiz? quiz});

  @override
  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class __$$QuizTakingStateImplCopyWithImpl<$Res>
    extends _$QuizTakingStateCopyWithImpl<$Res, _$QuizTakingStateImpl>
    implements _$$QuizTakingStateImplCopyWith<$Res> {
  __$$QuizTakingStateImplCopyWithImpl(
      _$QuizTakingStateImpl _value, $Res Function(_$QuizTakingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = freezed,
  }) {
    return _then(_$QuizTakingStateImpl(
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizTakingStateImpl implements _QuizTakingState {
  const _$QuizTakingStateImpl({this.quiz});

  factory _$QuizTakingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizTakingStateImplFromJson(json);

  @override
  final Quiz? quiz;

  @override
  String toString() {
    return 'QuizTakingState(quiz: $quiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizTakingStateImpl &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizTakingStateImplCopyWith<_$QuizTakingStateImpl> get copyWith =>
      __$$QuizTakingStateImplCopyWithImpl<_$QuizTakingStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizTakingStateImplToJson(
      this,
    );
  }
}

abstract class _QuizTakingState implements QuizTakingState {
  const factory _QuizTakingState({final Quiz? quiz}) = _$QuizTakingStateImpl;

  factory _QuizTakingState.fromJson(Map<String, dynamic> json) =
      _$QuizTakingStateImpl.fromJson;

  @override
  Quiz? get quiz;
  @override
  @JsonKey(ignore: true)
  _$$QuizTakingStateImplCopyWith<_$QuizTakingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
