// ignore_for_file: invalid_annotation_target

import 'package:appwrite/models.dart';
import 'package:manager/manager.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';

import '../../main.dart';

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
    @JsonKey(
      toJson: toJsonAny,
      fromJson: Session.fromMap,
    )
    final Session? session,
    @JsonKey(
      toJson: toJsonAny,
      fromJson: User.fromMap,
    )
    final User? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

final authStateRM = RM(
  () => AuthState(),
  persistor: Persistor(
    key: 'auth',
    toJson: (s) => s.toJson(),
    fromJson: AuthState.fromJson,
  ),
);

void login(
  String email,
  String password,
) async {
  authStateRM(
    authStateRM().copyWith(status: AuthStatus.waiting),
  );

  final session = await authenticationRepository.createSession(email, password);
  final user = await account.get();
  await Future.delayed(
    1.seconds,
    () => authStateRM(
      authStateRM().copyWith(
        status: AuthStatus.authenticated,
        email: email,
        password: password,
        userID: user.$id,
        user: user,
        session: session,
      ),
    ),
  );
}

void logout() async {
  authStateRM(
    authStateRM().copyWith(status: AuthStatus.waiting),
  );
  await authenticationRepository.logout();
  await Future.delayed(
    1.seconds,
    () => authStateRM(
      authStateRM().copyWith(
        status: AuthStatus.unAuthenticated,
      ),
    ),
  );
}

void register(
  String email,
  String password,
  String userID,
) async {
  authStateRM(
    authStateRM().copyWith(status: AuthStatus.waiting),
  );

  final user = await authenticationRepository.register(
    email,
    password,
    userID,
  );
  final session = await account.getSession(sessionId: 'current');

  await Future.delayed(
    1.seconds,
    () => authStateRM(
      authStateRM().copyWith(
        status: AuthStatus.authenticated,
        email: email,
        password: password,
        userID: userID,
        user: user,
        session: session,
      ),
    ),
  );
}

final authenticationRepository = AuthenticationRepository();
final account = Account(client);

class AuthenticationRepository {
  Future<Session> createSession(
    String email,
    String password,
  ) {
    return account.createEmailSession(
      email: email,
      password: password,
    );
  }

  Future<User> register(
    String email,
    String password,
    String userID,
  ) {
    return account.create(
      userId: userID,
      email: email,
      password: password,
    );
  }

  Future logout() => account.deleteSessions();
}
