// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:apps/globals.dart';
import 'package:apps/models/user_model.dart';
import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../settings/settings.dart';
import '../../utils.dart';
import '../../settings/authentication.dart';

class LoginForm extends HookConsumerWidget {
  LoginForm({key}) : super(key: key);
  // final obscure = RM.inject(() => true);
  final loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ref) {
    final Size size = MediaQuery.of(context).size;
    final settingsModel = ref.watch(settingsProvider);
    final settingsNotifier = ref.watch(settingsProvider.notifier);
    final obscure = useState(true);
    final email = useTextEditingController();
    final password = useTextEditingController();
    // final dateOfBirth = useState(DateTime.now());
    return Form(
      key: loginForm,
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundWidget(size),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(settingsModel.padding),
                child: Card(
                  child: Column(
                    children: [
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

                            (loginForm.currentState!.validate())
                                ? settingsNotifier.signIn(
                                    UserModel(
                                      email: email.text,
                                      password: password.text,
                                    ),
                                  )
                                : null;
                          },
                          child: Text("Login"),
                        ),
                        // TODO - re-implement login system
                      ),
                      Divider(),
                      for (final eachApp in availableApps)
                        Card(
                          child: ListTile(
                            title: Text(
                              eachApp.description,
                            ),
                          ),
                        )
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
