import 'package:beseech/main.dart';

class LifeUI extends UI {
  const LifeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'LIFE'.text().pad(),
        DropdownButtonFormField(
          value: appUserRM().ageVysor,
          items: AgeVysor.values
              .map(
                (eachAgeVysor) => DropdownMenuItem(
                  value: eachAgeVysor,
                  child: eachAgeVysor.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (ageVysor) {
            appUserRM(AppUserEvent.setAgeVysor(ageVysor));
          },
          padding: EdgeInsets.all(settingsRM.state.padding),
        ),
        () {
          switch (appUserRM().ageVysor) {
            case AgeVysor.years:
              return "${appUserRM().age.inDays ~/ (30 * 12)} YEARS".text();
            case AgeVysor.months:
              return "${appUserRM().age.inDays ~/ 30} MONTHS".text();
            case AgeVysor.days:
              return "${appUserRM().age.inDays} DAYS".text();
            case AgeVysor.hours:
              return "${appUserRM().age.inHours} HOURS".text();
            case AgeVysor.minutes:
              return "${appUserRM().age.inMinutes} MINUTES".text();
            case AgeVysor.seconds:
              return "${appUserRM().age.inSeconds} SECONDS".text();
          }
        }()
            .pad()
      ],
    );
  }
}
