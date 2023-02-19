// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:states_rebuilder/states_rebuilder.dart';

final settings = RM.inject<Settings?>(() => null);

class Settings {
  // @override
  // SettingsModel build() => const SettingsModel(
  //       themeMode: ThemeMode.system,
  //       font: "Dosis",
  //       materialColor: Colors.blue,
  //       padding: 4,
  //       borderRadius: 4,
  //       currentApp: null,
  //       currentUser: null,
  //     );

  // void themeMode(ThemeMode value) => state = state.copyWith(themeMode: value);
  // void font(value) => state = state.copyWith(font: value);
  // void padding(value) => state = state.copyWith(padding: value);
  // void materialColor(value) => state = state.copyWith(materialColor: value);
  // void borderRadius(value) => state = state.copyWith(borderRadius: value);
  // void currentApp(AvailableApps? value) {
  //   state = state.copyWith(currentApp: value);
  //   print(state.toJson());
  // }

  // void currentUser(UserModel value) => state = state.copyWith(currentUser: value);

  // void signOut() => state = state.copyWith(currentUser: guestUser);
  // void exitApp() => state = state.copyWith(currentApp: AvailableApps.dashboard);
  // void signIn(String emailId, String password) {
  //   final users = ref.watch(usersProvider);
  //   final Settings settingsNotifier = ref.read(settingsProvider.notifier);
  //   for (final eachUser in users) {
  //     if (eachUser.email == emailId) {
  //       print('${eachUser.email} exists');
  //       if (eachUser.password == password) {
  //         print('password matched');
  //         settingsNotifier.currentUser(eachUser);
  //         // state = true;
  //       }
  //     } else {
  //       print('${eachUser.email} not given in textfield');
  //     }
  //   }
  //   // state = true;
  // }
}
