import 'package:beseech/main.dart';

import '../components/get_started_button.dart';
import '../components/name_ui.dart';

class InitialPage extends UI {
  static const route = '/initial';
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final isAgeBased = appUser.useAgeBasedPubertyOrExplicitPuberty;
    return Scaffold(
      appBar: AppBar(
        title: 'First Run - Startup'.text(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          const NameUI(),
          // MySlider(
          //   value: configurationBloc.state.borderRadiusValue,
          //   onValueChanged: configurationBloc.setBorderRadius,
          //   borderRadius: BorderRadius.circular(
          //     configurationBloc.state.borderRadius * 30,
          //   ),
          //   label: 'Border Radius',
          // ),

          // BorderRadiusUI(),
          // const DateOfBirthUI(titleTextSize: 1),
          // SwitchListTile(
          //   title: (isAgeBased
          //           ? 'explicitly use puberty date'
          //           : 'using age based puberty')
          //       .text(),
          //   value: isAgeBased,
          //   onChanged: appUserBloc.setUseAgeBasedPubertyOrExplicitPuberty,
          // ).pad(),
          // if (isAgeBased) const DateOfPubertyUI(),
          const GetStartedButton(),
          // const AgeLessThan14(),
        ],
      ),
    );
  }
}
// @deprecated
// class AgeLessThan14 extends ReactiveStatelessWidget {
//   const AgeLessThan14({super.key});
//   @deprecated
//   @override
//   Widget build(BuildContext context) {
//     final isAgeBasedPuberty = true;
//     final isAdult = appUser.isUserAdult;
//     final age = appUser.age;
//     final Widget message;
//     if (isAgeBasedPuberty) {
//       if (appUser.dateOfPuberty == null) {
//         message = "Please assign date of puberty".text().pad();
//       } else {
//         message = '${(age.inDays / 365).floor()} years old'.text().pad();
//       }
//     } else {
//       if (isAdult) {
//         message = '${(age.inDays / 365).floor()} years old'.text().pad();
//       } else {
//         message =
//             'ERROR - age should be at least 14 years not ${age.inDays} days.'
//                 .text()
//                 .pad();
//       }
//     }

//     return message;
//   }
// }

void updateDateOfPuberty({
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
    appUserRM(AppUserEvent.setDateOfPubertyExplicit(givenDate!));
  } else {
    appUserRM(AppUserEvent.setDateOfPubertyExplicit(value));
  }
}
