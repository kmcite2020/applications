import 'package:smc/main.dart';

class HospitalInformationDialog extends UI {
  const HospitalInformationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Name'.text(),
          'SUBHAN MEDICAL CENTER'.text(textScaleFactor: 1.4),
          'Services'.text(),
          'FIRST AID'.text(textScaleFactor: 1.4),
          'MINOR OT'.text(textScaleFactor: 1.4),
          'GENERAL PHYSICIANS'.text(textScaleFactor: 1.4),
          'MATERNITY HOME'.text(textScaleFactor: 1.4),
          '24 HOURS SERVICE.'.text(textScaleFactor: 1.4),
          'ULTRASOUND'.text(textScaleFactor: 1.4),
          'Location'.text(),
          'GANGODHER PUL NARANJI'.text(textScaleFactor: 1.4),
          'Incharge'.text(),
          'DR. FAZLE SUBHAN'.text(textScaleFactor: 1.4),
        ],
      ).pad(),
    );
  }
}
