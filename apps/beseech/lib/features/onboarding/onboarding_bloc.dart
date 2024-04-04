import 'onboarding.dart';

void setOnboardingPageIndex(int value) {
  onboarding(onboarding.copyWith(onboardingPageIndex: value));
}

void setOnboardingComplete(bool value) {
  onboarding(onboarding.copyWith(isOnboardingComplete: value));
}
