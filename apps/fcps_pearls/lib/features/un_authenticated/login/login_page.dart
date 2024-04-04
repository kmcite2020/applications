import 'package:manager/manager.dart';
import '../../auth_state.dart';
import '../un_athenticated.dart';

String? validatePassword(String? password) {
  if (password!.isEmpty) {
    return 'Please enter a password';
  }
  if (password.length < 8) {
    return 'Password must be at least 8 characters';
  }
  return null;
}

String? validateEmail(String? email) {
  if (email!.isEmpty) {
    return 'Please enter an email';
  }
  if (!email.contains('@')) {
    return 'Please enter a valid email';
  }
  return null;
}

bool get isItGoodToLogin =>
    validateEmail(
          loginEmailRM(),
        ) ==
        null &&
    validatePassword(
          loginPasswordRM(),
        ) ==
        null;

final loginEmailRM = Simplicity(
  '',
  // persistor: Persistor(
  //   key: 'loginEmail',
  //   toJson: (email) => {'data': email},
  //   fromJson: (json) => json['data'],
  // ),
);
final loginPasswordRM = Simplicity(
  '',
  // persistor: Persistor(
  //   key: 'loginPassword',
  //   toJson: (password) => {'data': password},
  //   fromJson: (json) => json['data'],
  // ),
);

class LoginPage extends UI {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Login'.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: loginEmailRM(),
            onChanged: loginEmailRM.call,
            decoration: InputDecoration(labelText: 'Email'),
            validator: validateEmail,
            autovalidateMode: AutovalidateMode.always,
          ).pad(),
          TextFormField(
            initialValue: loginPasswordRM(),
            onChanged: loginPasswordRM.call,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: validatePassword,
            autovalidateMode: AutovalidateMode.always,
          ).pad(),
          ElevatedButton(
            onPressed: isItGoodToLogin
                ? () => authStateRM.login(
                      loginEmailRM(),
                      loginPasswordRM(),
                    )
                : null,
            child: 'Login'.text(textScaleFactor: 2).pad(),
          ).pad(),
          TextButton(
            onPressed: () =>
                unAuthenticatedPageRM(UnAuthenticatedPage.register),
            child: 'New to FCPS Pearls. Register?'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
