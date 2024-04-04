import 'package:beseech/main.dart';

class DateOfBirthUI extends UI {
  const DateOfBirthUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: settingsBloc.state.materialColor.withOpacity(.6),
        ),
        borderRadius: BorderRadius.circular(settingsBloc.state.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'DATE OF BIRTH - date of your coming to creation'.text().pad(),
          appUser.dateOfBirth.humanReadable.text().pad().card().pad(),
          ElevatedButton(
            onPressed: () {
              OnboardingPage.updateDateOfBirth(context: context);
            },
            child: 'What is your date of birth?'.text(),
          ).pad(),
        ],
      ),
    ).pad();
  }
}
