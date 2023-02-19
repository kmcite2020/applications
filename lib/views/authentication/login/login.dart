// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:apps/models/user_model.dart';
import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../controllers/settings.dart';
import '../../../controllers/users.dart';
import '../../../utils.dart';
import '../../settings/themes.dart';
import '../../widgets/app_selector.dart';
import '../register/register.dart';

class LoginForm extends HookConsumerWidget {
  LoginForm({key}) : super(key: key);
  final loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ref) {
    final Size size = MediaQuery.of(context).size;
    final settingsModel = ref.watch(settingsProvider);
    final obscure = useState(true);
    final email = useTextEditingController();
    final password = useTextEditingController();
    // final dateOfBirth = useState(DateTime.now());
    return Form(
      key: loginForm,
      child: Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {
                to(RegisterForm(), context);
              },
              icon: Icon(Icons.supervised_user_circle))
        ]),
        body: Stack(
          children: [
            BackgroundWidget(size),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(settingsModel.padding),
                child: Card(
                  child: Column(
                    children: [
                      SettingsWidgets(),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(settingsModel.padding),
                        child: TextFormField(
                          // TODO - ability to add user from login page if not found in repository, may be going to register page from here
                          // TODO - add ability to goto REGISTER page. when no users are added in repository.
                          // TODO - Sigup Support
                          controller: email,
                          decoration: InputDecoration(
                            labelText: "Type email",
                            // errorText: emailLoginForm.error,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(settingsModel.padding),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Type password",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(settingsModel.padding),
                              child: IconButton(
                                onPressed: () => obscure.value = !obscure.value,
                                icon: Icon(obscure.value ? Icons.visibility : Icons.visibility_off),
                              ),
                            ),
                            // errorText: loginForm.currentState.,
                          ),
                          obscureText: obscure.value,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => loginForm.currentState!.validate(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(settingsModel.padding),
                        child: ElevatedButton(
                          onPressed: () {
                            // for (final eachUser in users) {}
                            ref.read(settingsProvider.notifier).signIn(email.text, password.text);

                            // (loginForm.currentState!.validate())
                            //     ? ref.read(authenticationProvider.notifier).signIn(email.text, password.text)
                            //     : null;
                          },
                          child: Text("Sign"),
                        ),
                        // TODO - re-implement login system
                      ),
                      Padding(
                        padding: EdgeInsets.all(settingsModel.padding),
                        child: ElevatedButton(
                          onPressed: () {
                            // for (final eachUser in users) {}
                            // ref.read(settingsProvider.notifier).signIn(email.text, password.text);
                            ref.read(settingsProvider.notifier).currentUser(guestUser);
                            // (loginForm.currentState!.validate())
                            //     ? ref.read(authenticationProvider.notifier).signIn(email.text, password.text)
                            //     : null;
                          },
                          child: Text("TEST - authenticate"),
                        ),
                        // TODO - re-implement login system
                      ),
                      // Divider(),
                      // for (final eachApp in availableApps)
                      //   Card(
                      //     child: ListTile(
                      //       title: Text(
                      //         eachApp.description,
                      //       ),
                      //     ),
                      //   )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
