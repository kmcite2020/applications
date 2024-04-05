import 'package:beseech/main.dart';

class RemainingPrayersUI extends UI {
  const RemainingPrayersUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'REMAINING PRAYERS'.text(textScaleFactor: 2),
        prayersRM.all.text(textScaleFactor: 3),
      ],
    ).pad();
  }
}
