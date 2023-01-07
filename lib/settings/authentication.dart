import 'package:apps/apps/userManagerApp/userManagerApp.dart';
import 'package:apps/models/user_model.dart';
import 'package:apps/settings/settings.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.g.dart';

// final loginForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     for (final eachUser in users) {
//       if (eachUser.email == emailLoginForm.value) {
//         print("${emailLoginForm.value} Match found");
//         if (eachUser.password == passwordLoginForm.value) {
//           print("password matched");
//           // currentUser = eachUser;
//           return;
//         } else {
//           print("password did not match");
//           return;
//         }
//       } else {
//         print("waiting...");
//       }
//     }
//     print("no match found");
//   },
// );
// final registerForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     UserModel tempUSER = UserModel(
//       name: nameFF.value,
//       email: emailRegisterForm.value,
//       password: passwordRegisterForm.value,
//       dateOfBirth: dateOfBirthFF.value,
//       dateOfPuberty: dateOfPubertyFF.value,
//     );
//     users = [...users, tempUSER];
//     // currentUser = tempUSER;
//     RM.navigate.back();
//   },
// );

// final usersRM = RM.inject<List<UserModel>>(
//   () => <UserModel>[],
//   persist: () => PersistState(
//     key: "users",
//     toJson: (s) => UserModel.toListJson(s),
//     fromJson: (json) => UserModel.fromListJson(json),
//   ),
// );
// List<UserModel> get users => usersRM.state;
// set users(value) => usersRM.state = value;

// final emailLoginForm = RM.injectTextEditing(
//   validators: [
//     (text) {
//       for (final eachUser in users) {
//         if (text == eachUser.email) {
//           return null;
//         }
//       }
//       return "user not available in repository";
//     }
//   ],
// );
// final emailRegisterForm = RM.injectTextEditing(
//   validators: [
//     (text) {
//       for (final eachUser in users) {
//         if (text == eachUser.email) {
//           return "user already exists";
//         }
//       }
//       return null;
//     }
//   ],
// );
// final passwordLoginForm = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (text!.isEmpty) {
//         return "passwords can not be empty";
//       }
//       return null;
//     }
//   ],
// );
// final passwordRegisterForm = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (text!.isEmpty) {
//         return "passwords can not be empty";
//       }
//       return null;
//     }
//   ],
// );
// final nameFF = RM.injectTextEditing(validators: []);
// final dateOfBirthFF = RM.injectFormField(
//   DateTime.now(),
//   validators: [
//     (date) {
//       if (DateTime.now().difference(date).inDays < 13 * 365) {
//         return "Your age is ${DateTime.now().difference(date).inDays ~/ 365} years.";
//       }
//       return null;
//     }
//   ],
// );
// final dateOfPubertyFF = RM.injectFormField(DateTime.now());

@riverpod
class Authentication extends _$Authentication {
  @override
  bool build() {
    return false;
  }

  void signIn(emailId, password) {
    final users = ref.watch(usersProvider);
    final SettingsNotifier settingsNotifier = ref.read(settingsProvider.notifier);
    for (final eachUser in users) {
      if (eachUser.email == emailId) {
        print('${eachUser.email} exists');
        if (eachUser.password == password) {
          print('password matched');
          settingsNotifier.currentUser = eachUser;
          state = true;
        }
      } else {
        print('${eachUser.email} not given in textfield');
      }
    }
  }

  void signOut() {
    ref.read(settingsProvider.notifier).currentUser = null;
    state = false;
  }

  void createUser(emailID, password) {
    final usersNotifier = ref.read(usersProvider.notifier);
    usersNotifier.addUser(UserModel(email: emailID, password: password));
  }
}
