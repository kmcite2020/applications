import 'package:manager/manager.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

enum AuthStatus { waiting, unAuthenticated, authenticated, error }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.unAuthenticated) final AuthStatus status,
    @Default('') String userID,
    @Default('') String email,
    @Default('') String password,
    @Default('') String error,
    @Default('') String stackTrace,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

final authStateRM = ComplexLegacy(AuthState())
  ..register<_AuthEventLogin>(
    (event, state) {
      return state.copyWith(
        status: AuthStatus.authenticated,
        email: event.email,
        password: event.password,
        userID: "user.id",
      );
    },
  )
  ..register<_AuthEventRegister>(
    (event, state) => state.copyWith(
      status: AuthStatus.authenticated,
      email: event.email,
      password: event.password,
      userID: event.userID,
    ),
  )
  ..register<_AuthEventLogout>(
    (event, state) => state.copyWith(
      status: AuthStatus.unAuthenticated,
    ),
  );

// AuthStateRM(AuthState());
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
    String email,
    String password,
  ) = _AuthEventLogin;
  const factory AuthEvent.register(
    String email,
    String password,
    String userID,
  ) = _AuthEventRegister;
  const factory AuthEvent.logout() = _AuthEventLogout;
}
