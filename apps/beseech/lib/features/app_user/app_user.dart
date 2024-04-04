import 'package:beseech/features/shared/app.dart';

import '../../main.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

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

AppUser get appUser => application.appUser;
set appUser(AppUser _) => application(application.copyWith(appUser: _));
final ageRM = RM.injectStream(
  _age,
  initialState: Duration.zero,
);
Stream<Duration> _age() {
  return Stream.periodic(
    17.milliseconds,
    (_) {
      final now = DateTime.now();
      return Duration(
        milliseconds: now.difference(appUser.dateOfBirth).inMilliseconds,
      );
    },
  );
}

Duration get age => ageRM.state;

void setDateOfBirth(DateTime value) =>
    appUser = appUser.copyWith(dateOfBirth: value);
void setAgeBasedOrExplicit(bool value) =>
    appUser = appUser.copyWith(ageBasedOrExplicit: value);
void setDateOfPubertyExplicit(DateTime value) =>
    appUser = appUser.copyWith(dateOfPubertyExplicit: value);
void setAgeVysor(AgeVysor? value) =>
    appUser = appUser.copyWith(ageVysor: value!);
