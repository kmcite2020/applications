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
    // @JsonKey(
    //   toJson: toJsonAny,
    //   fromJson: Session.fromMap,
    // )
    // final Session? session,
    // @JsonKey(
    //   toJson: toJsonAny,
    //   fromJson: User.fromMap,
    // )
    // final User? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

final authStateRM = AuthStateRM(AuthState());

class AuthStateRM extends Simple<AuthState> {
  AuthStateRM(super.initialState);
  void login(
    String email,
    String password,
  ) async {
    state = (state.copyWith(status: AuthStatus.waiting));

    // final session =
    //     await authenticationRepository.createSession(email, password);
    // final user = await account.get();
    await Future.delayed(
      1.seconds,
      () => state = (state.copyWith(
        status: AuthStatus.authenticated,
        email: email,
        password: password,
        userID: "user.id",
      )),
    );
  }

  void logout() async {
    state = (state.copyWith(status: AuthStatus.waiting));
    // await authenticationRepository.logout();
    await Future.delayed(
      1.seconds,
      () => state = (state.copyWith(status: AuthStatus.unAuthenticated)),
    );
  }

  void register(
    String email,
    String password,
    String userID,
  ) async {
    state = (state.copyWith(status: AuthStatus.waiting));

    // final user = await authenticationRepository.register(
    //   email,
    //   password,
    //   userID,
    // );
    // final session = await account.getSession(sessionId: 'current');

    await Future.delayed(
      1.seconds,
      () => state = (state.copyWith(
        status: AuthStatus.authenticated,
        email: email,
        password: password,
        userID: userID,
      )),
    );
  }
}

// final authStateRM = RM(
//   () => AuthState(),
//   persistor: Persistor(
//     key: 'auth',
//     toJson: (s) => s.toJson(),
//     fromJson: AuthState.fromJson,
//   ),
// );

// final authenticationRepository = AuthenticationRepository();
// final account = Account(client);

// class AuthenticationRepository {
//   Future<Session> createSession(
//     String email,
//     String password,
//   ) {
//     return account.createEmailSession(
//       email: email,
//       password: password,
//     );
//   }

//   Future<User> register(
//     String email,
//     String password,
//     String userID,
//   ) {
//     return account.create(
//       userId: userID,
//       email: email,
//       password: password,
//     );
//   }

//   Future logout() => account.deleteSessions();
// }
