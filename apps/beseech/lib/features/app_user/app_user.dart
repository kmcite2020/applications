import '../../main.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

final appUserRM = AppUserRM();

class AppUserRM extends Complex<AppUserEvent, AppUser> {
  AppUserRM() {
    register<_AppUserEventSetDateOfBirth>(
      (_) => state = state.copyWith(
        dateOfBirth: _.dateOfBirth,
      ),
    );
    register<_AppUserEventSetAgeBaredOrExplicit>(
      (_) => state = state.copyWith(
        ageBasedOrExplicit: _.ageBasedOrExplicit,
      ),
    );
    register<_AppUserEventSetDateOfPubertyExplicit>(
      (_) => state = state.copyWith(
        dateOfPubertyExplicit: _.dateOfPuberty,
      ),
    );
    register<_AppUserEventSetAgeVysor>(
      (_) => state = state.copyWith(ageVysor: _.ageVysor!),
    );
    register<_AppUserEventSetUserName>(
      (_) => state = state.copyWith(userName: _.userName),
    );
    _age().listen((event) {});
  }
  final initialState = AppUser();

  Stream<Duration> _age() => Stream.periodic(
        17.milliseconds,
        (_) {
          final now = DateTime.now();
          return Duration(
            milliseconds: now.difference(state.dateOfBirth).inMilliseconds,
          );
        },
      );

  Duration get age => DateTime.now().difference(state.dateOfBirth);
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
}

@freezed
class AppUser with _$AppUser {
  static const fourteenYears = Duration(days: 365 * 14);

  const AppUser._();
  factory AppUser.raw({
    required final String userName,
    required final bool editing,
    required final bool ageBasedOrExplicit,
    required final DateTime dateOfBirth,
    required final DateTime dateOfPubertyExplicit,
    required final AgeVysor ageVysor,
  }) = _AppUser;
  factory AppUser() => AppUser.raw(
        userName: '',
        editing: false,
        ageBasedOrExplicit: false,
        dateOfBirth: DateTime.now(),
        dateOfPubertyExplicit: DateTime.now(),
        ageVysor: AgeVysor.seconds,
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

// AppUser get appUser => application.appUser;
// set appUser(AppUser _) => application = application.copyWith(appUser: _);
// final ageRM = StreamBase(
//   () => _age(),
//   initialState: Duration.zero,
// );
// final ageRM = RM.injectStream(
//   _age,
//   initialState: Duration.zero,
// );

// void setDateOfBirth(DateTime value) =>
//     appUser = appUser.copyWith(dateOfBirth: value);
// void setAgeBasedOrExplicit(bool value) =>
//     appUser = appUser.copyWith(ageBasedOrExplicit: value);
// void setDateOfPubertyExplicit(DateTime value) =>
//     appUser = appUser.copyWith(dateOfPubertyExplicit: value);
// void setAgeVysor(AgeVysor? value) =>
//     appUser = appUser.copyWith(ageVysor: value!);
