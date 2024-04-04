import '../../main.dart';

part 'onboarding.freezed.dart';
part 'onboarding.g.dart';

@freezed
class Onboarding with _$Onboarding {
  factory Onboarding.raw({
    required final int onboardingPageIndex,
    required final bool isOnboardingComplete,
  }) = _Onboarding;
  factory Onboarding() {
    return Onboarding.raw(
      onboardingPageIndex: 0,
      isOnboardingComplete: false,
    );
  }
  factory Onboarding.fromJson(json) => _$OnboardingFromJson(json);
  Onboarding._();
  Onboarding call([Onboarding? model]) {
    if (model != null) onboarding = model;
    return onboarding;
  }
}

final onboardingRM = RM.inject(
  () => Onboarding(),
  persist: () => PersistState(
    key: 'onboarding',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Onboarding.fromJson(jsonDecode(json)),
  ),
);
Onboarding get onboarding => onboardingRM.state;
set onboarding(Onboarding _) => onboardingRM.state = _;
