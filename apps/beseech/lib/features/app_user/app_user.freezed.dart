// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserEventCopyWith<$Res> {
  factory $AppUserEventCopyWith(
          AppUserEvent value, $Res Function(AppUserEvent) then) =
      _$AppUserEventCopyWithImpl<$Res, AppUserEvent>;
}

/// @nodoc
class _$AppUserEventCopyWithImpl<$Res, $Val extends AppUserEvent>
    implements $AppUserEventCopyWith<$Res> {
  _$AppUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppUserEventSetDateOfBirthImplCopyWith<$Res> {
  factory _$$AppUserEventSetDateOfBirthImplCopyWith(
          _$AppUserEventSetDateOfBirthImpl value,
          $Res Function(_$AppUserEventSetDateOfBirthImpl) then) =
      __$$AppUserEventSetDateOfBirthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateOfBirth});
}

/// @nodoc
class __$$AppUserEventSetDateOfBirthImplCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res, _$AppUserEventSetDateOfBirthImpl>
    implements _$$AppUserEventSetDateOfBirthImplCopyWith<$Res> {
  __$$AppUserEventSetDateOfBirthImplCopyWithImpl(
      _$AppUserEventSetDateOfBirthImpl _value,
      $Res Function(_$AppUserEventSetDateOfBirthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
  }) {
    return _then(_$AppUserEventSetDateOfBirthImpl(
      null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AppUserEventSetDateOfBirthImpl
    with DiagnosticableTreeMixin
    implements _AppUserEventSetDateOfBirth {
  const _$AppUserEventSetDateOfBirthImpl(this.dateOfBirth);

  @override
  final DateTime dateOfBirth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserEvent.setDateOfBirth(dateOfBirth: $dateOfBirth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserEvent.setDateOfBirth'))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserEventSetDateOfBirthImpl &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserEventSetDateOfBirthImplCopyWith<_$AppUserEventSetDateOfBirthImpl>
      get copyWith => __$$AppUserEventSetDateOfBirthImplCopyWithImpl<
          _$AppUserEventSetDateOfBirthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) {
    return setDateOfBirth(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) {
    return setDateOfBirth?.call(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) {
    if (setDateOfBirth != null) {
      return setDateOfBirth(dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) {
    return setDateOfBirth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) {
    return setDateOfBirth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) {
    if (setDateOfBirth != null) {
      return setDateOfBirth(this);
    }
    return orElse();
  }
}

abstract class _AppUserEventSetDateOfBirth implements AppUserEvent {
  const factory _AppUserEventSetDateOfBirth(final DateTime dateOfBirth) =
      _$AppUserEventSetDateOfBirthImpl;

  DateTime get dateOfBirth;
  @JsonKey(ignore: true)
  _$$AppUserEventSetDateOfBirthImplCopyWith<_$AppUserEventSetDateOfBirthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUserEventSetAgeBaredOrExplicitImplCopyWith<$Res> {
  factory _$$AppUserEventSetAgeBaredOrExplicitImplCopyWith(
          _$AppUserEventSetAgeBaredOrExplicitImpl value,
          $Res Function(_$AppUserEventSetAgeBaredOrExplicitImpl) then) =
      __$$AppUserEventSetAgeBaredOrExplicitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool ageBasedOrExplicit});
}

/// @nodoc
class __$$AppUserEventSetAgeBaredOrExplicitImplCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res,
        _$AppUserEventSetAgeBaredOrExplicitImpl>
    implements _$$AppUserEventSetAgeBaredOrExplicitImplCopyWith<$Res> {
  __$$AppUserEventSetAgeBaredOrExplicitImplCopyWithImpl(
      _$AppUserEventSetAgeBaredOrExplicitImpl _value,
      $Res Function(_$AppUserEventSetAgeBaredOrExplicitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageBasedOrExplicit = null,
  }) {
    return _then(_$AppUserEventSetAgeBaredOrExplicitImpl(
      null == ageBasedOrExplicit
          ? _value.ageBasedOrExplicit
          : ageBasedOrExplicit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppUserEventSetAgeBaredOrExplicitImpl
    with DiagnosticableTreeMixin
    implements _AppUserEventSetAgeBaredOrExplicit {
  const _$AppUserEventSetAgeBaredOrExplicitImpl(this.ageBasedOrExplicit);

  @override
  final bool ageBasedOrExplicit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserEvent.setAgeBasedOrExplicit(ageBasedOrExplicit: $ageBasedOrExplicit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserEvent.setAgeBasedOrExplicit'))
      ..add(DiagnosticsProperty('ageBasedOrExplicit', ageBasedOrExplicit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserEventSetAgeBaredOrExplicitImpl &&
            (identical(other.ageBasedOrExplicit, ageBasedOrExplicit) ||
                other.ageBasedOrExplicit == ageBasedOrExplicit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ageBasedOrExplicit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserEventSetAgeBaredOrExplicitImplCopyWith<
          _$AppUserEventSetAgeBaredOrExplicitImpl>
      get copyWith => __$$AppUserEventSetAgeBaredOrExplicitImplCopyWithImpl<
          _$AppUserEventSetAgeBaredOrExplicitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) {
    return setAgeBasedOrExplicit(ageBasedOrExplicit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) {
    return setAgeBasedOrExplicit?.call(ageBasedOrExplicit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) {
    if (setAgeBasedOrExplicit != null) {
      return setAgeBasedOrExplicit(ageBasedOrExplicit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) {
    return setAgeBasedOrExplicit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) {
    return setAgeBasedOrExplicit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) {
    if (setAgeBasedOrExplicit != null) {
      return setAgeBasedOrExplicit(this);
    }
    return orElse();
  }
}

abstract class _AppUserEventSetAgeBaredOrExplicit implements AppUserEvent {
  const factory _AppUserEventSetAgeBaredOrExplicit(
      final bool ageBasedOrExplicit) = _$AppUserEventSetAgeBaredOrExplicitImpl;

  bool get ageBasedOrExplicit;
  @JsonKey(ignore: true)
  _$$AppUserEventSetAgeBaredOrExplicitImplCopyWith<
          _$AppUserEventSetAgeBaredOrExplicitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUserEventSetDateOfPubertyExplicitImplCopyWith<$Res> {
  factory _$$AppUserEventSetDateOfPubertyExplicitImplCopyWith(
          _$AppUserEventSetDateOfPubertyExplicitImpl value,
          $Res Function(_$AppUserEventSetDateOfPubertyExplicitImpl) then) =
      __$$AppUserEventSetDateOfPubertyExplicitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateOfPuberty});
}

/// @nodoc
class __$$AppUserEventSetDateOfPubertyExplicitImplCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res,
        _$AppUserEventSetDateOfPubertyExplicitImpl>
    implements _$$AppUserEventSetDateOfPubertyExplicitImplCopyWith<$Res> {
  __$$AppUserEventSetDateOfPubertyExplicitImplCopyWithImpl(
      _$AppUserEventSetDateOfPubertyExplicitImpl _value,
      $Res Function(_$AppUserEventSetDateOfPubertyExplicitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfPuberty = null,
  }) {
    return _then(_$AppUserEventSetDateOfPubertyExplicitImpl(
      null == dateOfPuberty
          ? _value.dateOfPuberty
          : dateOfPuberty // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AppUserEventSetDateOfPubertyExplicitImpl
    with DiagnosticableTreeMixin
    implements _AppUserEventSetDateOfPubertyExplicit {
  const _$AppUserEventSetDateOfPubertyExplicitImpl(this.dateOfPuberty);

  @override
  final DateTime dateOfPuberty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserEvent.setDateOfPubertyExplicit(dateOfPuberty: $dateOfPuberty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AppUserEvent.setDateOfPubertyExplicit'))
      ..add(DiagnosticsProperty('dateOfPuberty', dateOfPuberty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserEventSetDateOfPubertyExplicitImpl &&
            (identical(other.dateOfPuberty, dateOfPuberty) ||
                other.dateOfPuberty == dateOfPuberty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfPuberty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserEventSetDateOfPubertyExplicitImplCopyWith<
          _$AppUserEventSetDateOfPubertyExplicitImpl>
      get copyWith => __$$AppUserEventSetDateOfPubertyExplicitImplCopyWithImpl<
          _$AppUserEventSetDateOfPubertyExplicitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) {
    return setDateOfPubertyExplicit(dateOfPuberty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) {
    return setDateOfPubertyExplicit?.call(dateOfPuberty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) {
    if (setDateOfPubertyExplicit != null) {
      return setDateOfPubertyExplicit(dateOfPuberty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) {
    return setDateOfPubertyExplicit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) {
    return setDateOfPubertyExplicit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) {
    if (setDateOfPubertyExplicit != null) {
      return setDateOfPubertyExplicit(this);
    }
    return orElse();
  }
}

abstract class _AppUserEventSetDateOfPubertyExplicit implements AppUserEvent {
  const factory _AppUserEventSetDateOfPubertyExplicit(
          final DateTime dateOfPuberty) =
      _$AppUserEventSetDateOfPubertyExplicitImpl;

  DateTime get dateOfPuberty;
  @JsonKey(ignore: true)
  _$$AppUserEventSetDateOfPubertyExplicitImplCopyWith<
          _$AppUserEventSetDateOfPubertyExplicitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUserEventSetAgeVysorImplCopyWith<$Res> {
  factory _$$AppUserEventSetAgeVysorImplCopyWith(
          _$AppUserEventSetAgeVysorImpl value,
          $Res Function(_$AppUserEventSetAgeVysorImpl) then) =
      __$$AppUserEventSetAgeVysorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgeVysor? ageVysor});
}

/// @nodoc
class __$$AppUserEventSetAgeVysorImplCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res, _$AppUserEventSetAgeVysorImpl>
    implements _$$AppUserEventSetAgeVysorImplCopyWith<$Res> {
  __$$AppUserEventSetAgeVysorImplCopyWithImpl(
      _$AppUserEventSetAgeVysorImpl _value,
      $Res Function(_$AppUserEventSetAgeVysorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageVysor = freezed,
  }) {
    return _then(_$AppUserEventSetAgeVysorImpl(
      freezed == ageVysor
          ? _value.ageVysor
          : ageVysor // ignore: cast_nullable_to_non_nullable
              as AgeVysor?,
    ));
  }
}

/// @nodoc

class _$AppUserEventSetAgeVysorImpl
    with DiagnosticableTreeMixin
    implements _AppUserEventSetAgeVysor {
  const _$AppUserEventSetAgeVysorImpl(this.ageVysor);

  @override
  final AgeVysor? ageVysor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserEvent.setAgeVysor(ageVysor: $ageVysor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserEvent.setAgeVysor'))
      ..add(DiagnosticsProperty('ageVysor', ageVysor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserEventSetAgeVysorImpl &&
            (identical(other.ageVysor, ageVysor) ||
                other.ageVysor == ageVysor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ageVysor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserEventSetAgeVysorImplCopyWith<_$AppUserEventSetAgeVysorImpl>
      get copyWith => __$$AppUserEventSetAgeVysorImplCopyWithImpl<
          _$AppUserEventSetAgeVysorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) {
    return setAgeVysor(ageVysor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) {
    return setAgeVysor?.call(ageVysor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) {
    if (setAgeVysor != null) {
      return setAgeVysor(ageVysor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) {
    return setAgeVysor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) {
    return setAgeVysor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) {
    if (setAgeVysor != null) {
      return setAgeVysor(this);
    }
    return orElse();
  }
}

abstract class _AppUserEventSetAgeVysor implements AppUserEvent {
  const factory _AppUserEventSetAgeVysor(final AgeVysor? ageVysor) =
      _$AppUserEventSetAgeVysorImpl;

  AgeVysor? get ageVysor;
  @JsonKey(ignore: true)
  _$$AppUserEventSetAgeVysorImplCopyWith<_$AppUserEventSetAgeVysorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUserEventSetUserNameImplCopyWith<$Res> {
  factory _$$AppUserEventSetUserNameImplCopyWith(
          _$AppUserEventSetUserNameImpl value,
          $Res Function(_$AppUserEventSetUserNameImpl) then) =
      __$$AppUserEventSetUserNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$AppUserEventSetUserNameImplCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res, _$AppUserEventSetUserNameImpl>
    implements _$$AppUserEventSetUserNameImplCopyWith<$Res> {
  __$$AppUserEventSetUserNameImplCopyWithImpl(
      _$AppUserEventSetUserNameImpl _value,
      $Res Function(_$AppUserEventSetUserNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$AppUserEventSetUserNameImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppUserEventSetUserNameImpl
    with DiagnosticableTreeMixin
    implements _AppUserEventSetUserName {
  const _$AppUserEventSetUserNameImpl(this.userName);

  @override
  final String userName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserEvent.setUserName(userName: $userName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserEvent.setUserName'))
      ..add(DiagnosticsProperty('userName', userName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserEventSetUserNameImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserEventSetUserNameImplCopyWith<_$AppUserEventSetUserNameImpl>
      get copyWith => __$$AppUserEventSetUserNameImplCopyWithImpl<
          _$AppUserEventSetUserNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateOfBirth) setDateOfBirth,
    required TResult Function(bool ageBasedOrExplicit) setAgeBasedOrExplicit,
    required TResult Function(DateTime dateOfPuberty) setDateOfPubertyExplicit,
    required TResult Function(AgeVysor? ageVysor) setAgeVysor,
    required TResult Function(String userName) setUserName,
  }) {
    return setUserName(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult? Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult? Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult? Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult? Function(String userName)? setUserName,
  }) {
    return setUserName?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateOfBirth)? setDateOfBirth,
    TResult Function(bool ageBasedOrExplicit)? setAgeBasedOrExplicit,
    TResult Function(DateTime dateOfPuberty)? setDateOfPubertyExplicit,
    TResult Function(AgeVysor? ageVysor)? setAgeVysor,
    TResult Function(String userName)? setUserName,
    required TResult orElse(),
  }) {
    if (setUserName != null) {
      return setUserName(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserEventSetDateOfBirth value) setDateOfBirth,
    required TResult Function(_AppUserEventSetAgeBaredOrExplicit value)
        setAgeBasedOrExplicit,
    required TResult Function(_AppUserEventSetDateOfPubertyExplicit value)
        setDateOfPubertyExplicit,
    required TResult Function(_AppUserEventSetAgeVysor value) setAgeVysor,
    required TResult Function(_AppUserEventSetUserName value) setUserName,
  }) {
    return setUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult? Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult? Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult? Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult? Function(_AppUserEventSetUserName value)? setUserName,
  }) {
    return setUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserEventSetDateOfBirth value)? setDateOfBirth,
    TResult Function(_AppUserEventSetAgeBaredOrExplicit value)?
        setAgeBasedOrExplicit,
    TResult Function(_AppUserEventSetDateOfPubertyExplicit value)?
        setDateOfPubertyExplicit,
    TResult Function(_AppUserEventSetAgeVysor value)? setAgeVysor,
    TResult Function(_AppUserEventSetUserName value)? setUserName,
    required TResult orElse(),
  }) {
    if (setUserName != null) {
      return setUserName(this);
    }
    return orElse();
  }
}

abstract class _AppUserEventSetUserName implements AppUserEvent {
  const factory _AppUserEventSetUserName(final String userName) =
      _$AppUserEventSetUserNameImpl;

  String get userName;
  @JsonKey(ignore: true)
  _$$AppUserEventSetUserNameImplCopyWith<_$AppUserEventSetUserNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get userName => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  bool get ageBasedOrExplicit => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  DateTime get dateOfPubertyExplicit => throw _privateConstructorUsedError;
  AgeVysor get ageVysor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUser value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUser value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUser value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String userName,
      bool editing,
      bool ageBasedOrExplicit,
      DateTime dateOfBirth,
      DateTime dateOfPubertyExplicit,
      AgeVysor ageVysor});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? editing = null,
    Object? ageBasedOrExplicit = null,
    Object? dateOfBirth = null,
    Object? dateOfPubertyExplicit = null,
    Object? ageVysor = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      ageBasedOrExplicit: null == ageBasedOrExplicit
          ? _value.ageBasedOrExplicit
          : ageBasedOrExplicit // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfPubertyExplicit: null == dateOfPubertyExplicit
          ? _value.dateOfPubertyExplicit
          : dateOfPubertyExplicit // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageVysor: null == ageVysor
          ? _value.ageVysor
          : ageVysor // ignore: cast_nullable_to_non_nullable
              as AgeVysor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      bool editing,
      bool ageBasedOrExplicit,
      DateTime dateOfBirth,
      DateTime dateOfPubertyExplicit,
      AgeVysor ageVysor});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? editing = null,
    Object? ageBasedOrExplicit = null,
    Object? dateOfBirth = null,
    Object? dateOfPubertyExplicit = null,
    Object? ageVysor = null,
  }) {
    return _then(_$AppUserImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      ageBasedOrExplicit: null == ageBasedOrExplicit
          ? _value.ageBasedOrExplicit
          : ageBasedOrExplicit // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfPubertyExplicit: null == dateOfPubertyExplicit
          ? _value.dateOfPubertyExplicit
          : dateOfPubertyExplicit // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageVysor: null == ageVysor
          ? _value.ageVysor
          : ageVysor // ignore: cast_nullable_to_non_nullable
              as AgeVysor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserImpl extends _AppUser with DiagnosticableTreeMixin {
  _$AppUserImpl(
      {required this.userName,
      required this.editing,
      required this.ageBasedOrExplicit,
      required this.dateOfBirth,
      required this.dateOfPubertyExplicit,
      required this.ageVysor})
      : super._();

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  final String userName;
  @override
  final bool editing;
  @override
  final bool ageBasedOrExplicit;
  @override
  final DateTime dateOfBirth;
  @override
  final DateTime dateOfPubertyExplicit;
  @override
  final AgeVysor ageVysor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser.raw(userName: $userName, editing: $editing, ageBasedOrExplicit: $ageBasedOrExplicit, dateOfBirth: $dateOfBirth, dateOfPubertyExplicit: $dateOfPubertyExplicit, ageVysor: $ageVysor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUser.raw'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('ageBasedOrExplicit', ageBasedOrExplicit))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('dateOfPubertyExplicit', dateOfPubertyExplicit))
      ..add(DiagnosticsProperty('ageVysor', ageVysor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.ageBasedOrExplicit, ageBasedOrExplicit) ||
                other.ageBasedOrExplicit == ageBasedOrExplicit) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.dateOfPubertyExplicit, dateOfPubertyExplicit) ||
                other.dateOfPubertyExplicit == dateOfPubertyExplicit) &&
            (identical(other.ageVysor, ageVysor) ||
                other.ageVysor == ageVysor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, editing,
      ageBasedOrExplicit, dateOfBirth, dateOfPubertyExplicit, ageVysor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)
        raw,
  }) {
    return raw(userName, editing, ageBasedOrExplicit, dateOfBirth,
        dateOfPubertyExplicit, ageVysor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)?
        raw,
  }) {
    return raw?.call(userName, editing, ageBasedOrExplicit, dateOfBirth,
        dateOfPubertyExplicit, ageVysor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userName,
            bool editing,
            bool ageBasedOrExplicit,
            DateTime dateOfBirth,
            DateTime dateOfPubertyExplicit,
            AgeVysor ageVysor)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(userName, editing, ageBasedOrExplicit, dateOfBirth,
          dateOfPubertyExplicit, ageVysor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUser value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUser value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUser value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(
      this,
    );
  }
}

abstract class _AppUser extends AppUser {
  factory _AppUser(
      {required final String userName,
      required final bool editing,
      required final bool ageBasedOrExplicit,
      required final DateTime dateOfBirth,
      required final DateTime dateOfPubertyExplicit,
      required final AgeVysor ageVysor}) = _$AppUserImpl;
  _AppUser._() : super._();

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  String get userName;
  @override
  bool get editing;
  @override
  bool get ageBasedOrExplicit;
  @override
  DateTime get dateOfBirth;
  @override
  DateTime get dateOfPubertyExplicit;
  @override
  AgeVysor get ageVysor;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
