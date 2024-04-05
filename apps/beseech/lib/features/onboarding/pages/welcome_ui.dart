import 'package:beseech/main.dart';

class OnboardingPage extends UI {
  static const route = '/welcome';
  static const titleTextSize = 3.0;
  static void updateDateOfBirth({
    DateTime? givenDate,
    required BuildContext context,
  }) async {
    final value = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (value == null) {
      appUserRM(AppUserEvent.setDateOfBirth(givenDate!));
    } else {
      appUserRM(AppUserEvent.setDateOfBirth(value));
    }
  }

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> uiElements = [
      WelcomeUI(),
      NameSelectionUI(titleTextSize: titleTextSize),
      DateOfBirthUI(titleTextSize: titleTextSize),
      PubertyCalculationMethodUI(titleTextSize: titleTextSize),
      if (!appUserRM().ageBasedOrExplicit)
        DateOfPubertyUI(
          titleTextSize: titleTextSize,
          updateDateOfPuberty: () => updateDateOfPuberty(context: context),
        ),
      CreateRemainingPrayers(),
      GetStartedUI(titleTextSize: titleTextSize),
    ];
    return Scaffold(
      appBar: AppBar(
        title: DotsIndicator(
          dotsCount: uiElements.length,
          position: onboarding.onboardingPageIndex.toDouble(),
          onTap: (position) {
            setOnboardingPageIndex(position.toInt());
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: IndexedStack(
        index: onboarding.onboardingPageIndex,
        children: uiElements,
      ),
      floatingActionButton: ButtonBar(
        children: [
          ElevatedButton(
            onPressed: onboarding.onboardingPageIndex != 0
                ? () {
                    setOnboardingPageIndex(
                      onboarding.onboardingPageIndex - 1,
                    );
                  }
                : null,
            child: const Icon(Icons.arrow_back),
          ),
          ElevatedButton(
            onPressed: onboarding.onboardingPageIndex < uiElements.length - 1
                ? () {
                    setOnboardingPageIndex(
                      onboarding.onboardingPageIndex + 1,
                    );
                  }
                : null,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

class WelcomeUI extends UI {
  const WelcomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        'Welcome'.text(textScaleFactor: 3),
      ],
    );
  }
}

class NameSelectionUI extends StatelessWidget {
  const NameSelectionUI({
    super.key,
    required this.titleTextSize,
  });

  final double titleTextSize;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'What is your name?'.text(textScaleFactor: titleTextSize).pad(),
        TextFormField(
          onChanged: (userName) {
            appUserRM(AppUserEvent.setUserName(userName));
          },
        ).pad(),
      ],
    );
  }
}

class DateOfBirthUI extends StatelessWidget {
  const DateOfBirthUI({
    super.key,
    required this.titleTextSize,
  });

  final double titleTextSize;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'When were you born?'.text(textScaleFactor: titleTextSize).pad(),
        appUserRM().dateOfBirth.humane().text().pad().card().pad(),
        ElevatedButton(
          onPressed: () => OnboardingPage.updateDateOfBirth(context: context),
          child: 'Update your Date Of Birth'.text().pad(),
        ).pad(),
      ],
    );
  }
}

class PubertyCalculationMethodUI extends StatelessWidget {
  const PubertyCalculationMethodUI({
    super.key,
    required this.titleTextSize,
  });

  final double titleTextSize;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'How do you want to calculate your Puberty?'
            .text(textScaleFactor: titleTextSize)
            .pad(),
        'You can calculate based on your age or you can explicitly define puberty date.'
            .text()
            .pad(),
        SwitchListTile(
          title: (appUserRM().ageBasedOrExplicit ? 'AGE-BASED' : 'EXPLICIT')
              .text()
              .pad(),
          value: appUserRM().ageBasedOrExplicit,
          onChanged: (ageBasedOrExplicit) => appUserRM(
            AppUserEvent.setAgeBasedOrExplicit(ageBasedOrExplicit),
          ),
        ).card(),
      ],
    );
  }
}

class DateOfPubertyUI extends StatelessWidget {
  const DateOfPubertyUI({
    super.key,
    required this.titleTextSize,
    required this.updateDateOfPuberty,
  });

  final double titleTextSize;
  final void Function() updateDateOfPuberty;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'When you became adult?'.text(textScaleFactor: titleTextSize).pad(),
        ElevatedButton(
          onPressed: updateDateOfPuberty,
          child: 'Update your Date Of Puberty'.text().pad(),
        ).pad(),
        'Date Of Puberty'.text(textScaleFactor: 2).pad(),
        appUserRM().dateOfBirth.humane().text().pad().card().pad(),
      ],
    );
  }
}

class GetStartedUI extends StatelessWidget {
  const GetStartedUI({
    super.key,
    required this.titleTextSize,
  });

  final double titleTextSize;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'All set.'.text(textScaleFactor: titleTextSize).pad(),
        'Let\'s go.'.text(textScaleFactor: 1).pad(),
        '${appUserRM().isUserNameValid ? '✅' : '❎'} Your name is ${appUserRM().userName}'
            .text()
            .pad(),
        '${appUserRM().isUserAdult ? '✅ Adult.' : '❎ Not an adult.'} ${appUserRM().dateOfBirth.humane()}'
            .text()
            .pad(),
        ('Your age is ${(appUserRM().age.inDays / 365).toStringAsFixed(0)} years')
            .text()
            .pad()
            .card(),
        'Your date of birth is ${appUserRM().dateOfBirth.humane()}'
            .text()
            .pad()
            .card(),
        ElevatedButton(
          onPressed: () {
            return appUserRM().isUserNameValid && appUserRM().isUserAdult;
          }()
              ? () {
                  setOnboardingComplete(true);
                  // navigator.toAndRemoveUntil(Routes.home);
                }
              : null,
          child: 'Get Started'.text().pad(),
        ).pad()
      ],
    );
  }
}

class CreateRemainingPrayers extends StatelessWidget {
  const CreateRemainingPrayers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        'will implement'.text(textScaleFactor: 2),
      ],
    );
  }
}
