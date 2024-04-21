import '../../main.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

final appUserRM = ComplexLegacy<AppUserEvent, AppUser>(
  AppUser(),
  serializer: Serializer(
    key: 'appUser',
    fromJson: AppUser.fromJson,
  ),
)
  ..register<_AppUserEventSetDateOfBirth>(
    (_, state) => state = state.copyWith(dateOfBirth: _.dateOfBirth),
  )
  ..register<_AppUserEventSetAgeBaredOrExplicit>(
    (_, state) =>
        state = state.copyWith(ageBasedOrExplicit: _.ageBasedOrExplicit),
  )
  ..register<_AppUserEventSetDateOfPubertyExplicit>(
    (_, state) =>
        state = state.copyWith(dateOfPubertyExplicit: _.dateOfPuberty),
  )
  ..register<_AppUserEventSetAgeVysor>(
    (_, state) => state = state.copyWith(ageVysor: _.ageVysor!),
  )
  ..register<_AppUserEventSetUserName>(
    (_, state) => state = state.copyWith(userName: _.userName),
  )
  ..register<_AppUserEventSetAge>(
    (_, state) => state = state.copyWith(age: _.age),
  )
  ..register<_AppUserEventSetEditing>(
    (_, state) => state = state.copyWith(editing: _.editing),
  );

class AppUserRM {
  AppUserRM() {
    _age().listen(
      (age) => appUserRM(AppUserEvent.setAge(age)),
    );
  }
  final initialState = AppUser();

  Stream<Duration> _age() => Stream.periodic(
        17.milliseconds,
        (_) {
          final now = DateTime.now();
          return Duration(
            milliseconds:
                now.difference(appUserRM().dateOfBirth).inMilliseconds,
          );
        },
      );

  Duration get age => DateTime.now().difference(appUserRM().dateOfBirth);
}

@freezed
class AppUserEvent with _$AppUserEvent {
  const factory AppUserEvent.setDateOfBirth(DateTime dateOfBirth) =
      _AppUserEventSetDateOfBirth;
  const factory AppUserEvent.setAgeBasedOrExplicit(bool ageBasedOrExplicit) =
      _AppUserEventSetAgeBaredOrExplicit;
  const factory AppUserEvent.setDateOfPubertyExplicit(DateTime dateOfPuberty) =
      _AppUserEventSetDateOfPubertyExplicit;
  const factory AppUserEvent.setAgeVysor(AgeVysor? ageVysor) =
      _AppUserEventSetAgeVysor;
  const factory AppUserEvent.setUserName(String userName) =
      _AppUserEventSetUserName;
  const factory AppUserEvent.setAge(Duration age) = _AppUserEventSetAge;
  const factory AppUserEvent.setEditing(bool editing) = _AppUserEventSetEditing;
}

@freezed
class AppUser with _$AppUser {
  static const fourteenYears = Duration(days: 365 * 14);

  const AppUser._();
  factory AppUser.raw({
    @Default('') final String userName,
    @Default(false) final bool editing,
    @Default(false) final bool ageBasedOrExplicit,
    required final DateTime dateOfBirth,
    required final DateTime dateOfPubertyExplicit,
    @Default(AgeVysor.seconds) final AgeVysor ageVysor,
    @Default(Duration.zero) final Duration age,
  }) = _AppUser;
  factory AppUser() => AppUser.raw(
        dateOfBirth: DateTime.now(),
        dateOfPubertyExplicit: DateTime.now(),
      );

  DateTime get dateOfPuberty {
    if (ageBasedOrExplicit) {
      return dateOfBirth.add(fourteenYears);
    } else {
      return dateOfPubertyExplicit;
    }
  }

  Duration get age => DateTime.now().difference(dateOfBirth);

  bool get isUserNameValid => userName != '';
  bool get isUserAdult => dateOfPuberty.isBefore(DateTime.now());

  factory AppUser.fromJson(json) => _$AppUserFromJson(json);
}
