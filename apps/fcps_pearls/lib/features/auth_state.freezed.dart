// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get stackTrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatus status,
      String userID,
      String email,
      String password,
      String error,
      String stackTrace});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userID = null,
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus status,
      String userID,
      String email,
      String password,
      String error,
      String stackTrace});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userID = null,
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {this.status = AuthStatus.unAuthenticated,
      this.userID = '',
      this.email = '',
      this.password = '',
      this.error = '',
      this.stackTrace = ''});

  factory _$AuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateImplFromJson(json);

  @override
  @JsonKey()
  final AuthStatus status;
  @override
  @JsonKey()
  final String userID;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(status: $status, userID: $userID, email: $email, password: $password, error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, userID, email, password, error, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthStatus status,
      final String userID,
      final String email,
      final String password,
      final String error,
      final String stackTrace}) = _$AuthStateImpl;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$AuthStateImpl.fromJson;

  @override
  AuthStatus get status;
  @override
  String get userID;
  @override
  String get email;
  @override
  String get password;
  @override
  String get error;
  @override
  String get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String userID)
        register,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String userID)? register,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String userID)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(_AuthEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(_AuthEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthEventLoginImplCopyWith<$Res> {
  factory _$$AuthEventLoginImplCopyWith(_$AuthEventLoginImpl value,
          $Res Function(_$AuthEventLoginImpl) then) =
      __$$AuthEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthEventLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLoginImpl>
    implements _$$AuthEventLoginImplCopyWith<$Res> {
  __$$AuthEventLoginImplCopyWithImpl(
      _$AuthEventLoginImpl _value, $Res Function(_$AuthEventLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthEventLoginImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginImpl
    with DiagnosticableTreeMixin
    implements _AuthEventLogin {
  const _$AuthEventLoginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.login'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      __$$AuthEventLoginImplCopyWithImpl<_$AuthEventLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String userID)
        register,
    required TResult Function() logout,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String userID)? register,
    TResult? Function()? logout,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String userID)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogin implements AuthEvent {
  const factory _AuthEventLogin(final String email, final String password) =
      _$AuthEventLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventRegisterImplCopyWith<$Res> {
  factory _$$AuthEventRegisterImplCopyWith(_$AuthEventRegisterImpl value,
          $Res Function(_$AuthEventRegisterImpl) then) =
      __$$AuthEventRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String userID});
}

/// @nodoc
class __$$AuthEventRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventRegisterImpl>
    implements _$$AuthEventRegisterImplCopyWith<$Res> {
  __$$AuthEventRegisterImplCopyWithImpl(_$AuthEventRegisterImpl _value,
      $Res Function(_$AuthEventRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userID = null,
  }) {
    return _then(_$AuthEventRegisterImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventRegisterImpl
    with DiagnosticableTreeMixin
    implements _AuthEventRegister {
  const _$AuthEventRegisterImpl(this.email, this.password, this.userID);

  @override
  final String email;
  @override
  final String password;
  @override
  final String userID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.register(email: $email, password: $password, userID: $userID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.register'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('userID', userID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventRegisterImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventRegisterImplCopyWith<_$AuthEventRegisterImpl> get copyWith =>
      __$$AuthEventRegisterImplCopyWithImpl<_$AuthEventRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String userID)
        register,
    required TResult Function() logout,
  }) {
    return register(email, password, userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String userID)? register,
    TResult? Function()? logout,
  }) {
    return register?.call(email, password, userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String userID)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _AuthEventRegister implements AuthEvent {
  const factory _AuthEventRegister(
          final String email, final String password, final String userID) =
      _$AuthEventRegisterImpl;

  String get email;
  String get password;
  String get userID;
  @JsonKey(ignore: true)
  _$$AuthEventRegisterImplCopyWith<_$AuthEventRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventLogoutImplCopyWith<$Res> {
  factory _$$AuthEventLogoutImplCopyWith(_$AuthEventLogoutImpl value,
          $Res Function(_$AuthEventLogoutImpl) then) =
      __$$AuthEventLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLogoutImpl>
    implements _$$AuthEventLogoutImplCopyWith<$Res> {
  __$$AuthEventLogoutImplCopyWithImpl(
      _$AuthEventLogoutImpl _value, $Res Function(_$AuthEventLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventLogoutImpl
    with DiagnosticableTreeMixin
    implements _AuthEventLogout {
  const _$AuthEventLogoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logout'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email, String password, String userID)
        register,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email, String password, String userID)? register,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email, String password, String userID)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogout implements AuthEvent {
  const factory _AuthEventLogout() = _$AuthEventLogoutImpl;
}
