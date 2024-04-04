// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Onboarding _$OnboardingFromJson(Map<String, dynamic> json) {
  return _Onboarding.fromJson(json);
}

/// @nodoc
mixin _$Onboarding {
  int get onboardingPageIndex => throw _privateConstructorUsedError;
  bool get isOnboardingComplete => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int onboardingPageIndex, bool isOnboardingComplete)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int onboardingPageIndex, bool isOnboardingComplete)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int onboardingPageIndex, bool isOnboardingComplete)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Onboarding value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Onboarding value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Onboarding value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingCopyWith<Onboarding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingCopyWith<$Res> {
  factory $OnboardingCopyWith(
          Onboarding value, $Res Function(Onboarding) then) =
      _$OnboardingCopyWithImpl<$Res, Onboarding>;
  @useResult
  $Res call({int onboardingPageIndex, bool isOnboardingComplete});
}

/// @nodoc
class _$OnboardingCopyWithImpl<$Res, $Val extends Onboarding>
    implements $OnboardingCopyWith<$Res> {
  _$OnboardingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingPageIndex = null,
    Object? isOnboardingComplete = null,
  }) {
    return _then(_value.copyWith(
      onboardingPageIndex: null == onboardingPageIndex
          ? _value.onboardingPageIndex
          : onboardingPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnboardingComplete: null == isOnboardingComplete
          ? _value.isOnboardingComplete
          : isOnboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingImplCopyWith<$Res>
    implements $OnboardingCopyWith<$Res> {
  factory _$$OnboardingImplCopyWith(
          _$OnboardingImpl value, $Res Function(_$OnboardingImpl) then) =
      __$$OnboardingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int onboardingPageIndex, bool isOnboardingComplete});
}

/// @nodoc
class __$$OnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingCopyWithImpl<$Res, _$OnboardingImpl>
    implements _$$OnboardingImplCopyWith<$Res> {
  __$$OnboardingImplCopyWithImpl(
      _$OnboardingImpl _value, $Res Function(_$OnboardingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingPageIndex = null,
    Object? isOnboardingComplete = null,
  }) {
    return _then(_$OnboardingImpl(
      onboardingPageIndex: null == onboardingPageIndex
          ? _value.onboardingPageIndex
          : onboardingPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnboardingComplete: null == isOnboardingComplete
          ? _value.isOnboardingComplete
          : isOnboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingImpl extends _Onboarding {
  _$OnboardingImpl(
      {required this.onboardingPageIndex, required this.isOnboardingComplete})
      : super._();

  factory _$OnboardingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingImplFromJson(json);

  @override
  final int onboardingPageIndex;
  @override
  final bool isOnboardingComplete;

  @override
  String toString() {
    return 'Onboarding.raw(onboardingPageIndex: $onboardingPageIndex, isOnboardingComplete: $isOnboardingComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingImpl &&
            (identical(other.onboardingPageIndex, onboardingPageIndex) ||
                other.onboardingPageIndex == onboardingPageIndex) &&
            (identical(other.isOnboardingComplete, isOnboardingComplete) ||
                other.isOnboardingComplete == isOnboardingComplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, onboardingPageIndex, isOnboardingComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      __$$OnboardingImplCopyWithImpl<_$OnboardingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int onboardingPageIndex, bool isOnboardingComplete)
        raw,
  }) {
    return raw(onboardingPageIndex, isOnboardingComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int onboardingPageIndex, bool isOnboardingComplete)? raw,
  }) {
    return raw?.call(onboardingPageIndex, isOnboardingComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int onboardingPageIndex, bool isOnboardingComplete)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(onboardingPageIndex, isOnboardingComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Onboarding value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Onboarding value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Onboarding value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingImplToJson(
      this,
    );
  }
}

abstract class _Onboarding extends Onboarding {
  factory _Onboarding(
      {required final int onboardingPageIndex,
      required final bool isOnboardingComplete}) = _$OnboardingImpl;
  _Onboarding._() : super._();

  factory _Onboarding.fromJson(Map<String, dynamic> json) =
      _$OnboardingImpl.fromJson;

  @override
  int get onboardingPageIndex;
  @override
  bool get isOnboardingComplete;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
