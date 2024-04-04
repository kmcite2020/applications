import 'package:beseech/main.dart';

class DateOfPubertyUI extends UI {
  const DateOfPubertyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          // color: settingsBloc.settings.materialColor.withOpacity(.6),
        ),
        // borderRadius: BorderRadius.circular(
        //   settingsBloc.settings.borderRadius,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'DATE OF PUBERTY - became adult on'.text().pad(),
            ],
          ),
          appUser.dateOfPuberty.humane().text().pad().card().pad(),
          ElevatedButton(
            onPressed: () => updateDateOfPuberty(context: context),
            child: 'What is your puberty date?'.text(),
          ).pad(),
        ],
      ),
    ).pad();
  }
}
