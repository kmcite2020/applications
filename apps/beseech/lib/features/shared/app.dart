import 'package:beseech/features/prayers/prayers.dart';

import '../../main.dart';

part 'app.freezed.dart';
part 'app.g.dart';

@freezed
class Application with _$Application {
  const factory Application.raw({
    required final SettingsState settings,
    required final Prayers prayers,
    required final Onboarding onboarding,
    required final AppUser appUser,
  }) = _Application;

  factory Application() => Application.raw(
        settings: SettingsState(),
        prayers: Prayers(),
        onboarding: Onboarding(),
        appUser: AppUser(),
      );
  factory Application.fromJson(json) => _$ApplicationFromJson(json);
  const Application._();

  Application call([Application? _application]) =>
      _application != null ? application = _application : application;
}

final applicationRM = RM.inject(
  () => Application(),
  persist: () => PersistState(
    key: 'application',
    fromJson: (json) => Application.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);

Application get application => applicationRM.state;
set application(Application _application) => applicationRM.state = _application;
