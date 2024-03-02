import 'package:hmis/main.dart';

class PatientsEmptyWidget extends UI {
  const PatientsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: FaIcon(
        FontAwesomeIcons.peopleGroup,
        size: backgroundIconSize,
      ).pad(),
    );
  }
}
