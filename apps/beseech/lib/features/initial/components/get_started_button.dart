import 'package:beseech/main.dart';

class GetStartedButton extends UI {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Checkbox(
                value: true,
                // domainBloc.domain.agreed,
                onChanged: (o) {}
                //  domainBloc.setAgreed,
                ),
            'Are you sure?'.text(),
          ],
        ).pad(),
        ElevatedButton(
          onPressed: appUserRM().isUserNameValid
              ? () => setOnboardingComplete(true)
              : null,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(60),
          ),
          child: 'Get Started'.text(),
        ).pad(),
      ],
    ).pad();
  }
}
