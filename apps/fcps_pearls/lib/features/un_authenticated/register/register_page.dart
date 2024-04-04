import 'package:fcps_pearls/features/auth_state.dart';
import 'package:manager/manager.dart';

import '../un_athenticated.dart';

class RegisterPage extends UI {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Register'.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: registerUserIDRM(),
            onChanged: registerEmailRM.call,
            decoration: InputDecoration(labelText: 'User ID'),
          ).pad(),
          TextFormField(
            initialValue: registerEmailRM(),
            onChanged: registerEmailRM.call,
            decoration: InputDecoration(labelText: 'Email'),
            validator: validateEmail,
            autovalidateMode: AutovalidateMode.always,
          ).pad(),
          TextFormField(
            initialValue: registerPasswordRM(),
            onChanged: registerPasswordRM.call,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: validatePassword,
            autovalidateMode: AutovalidateMode.always,
          ).pad(),
          ElevatedButton(
            onPressed: () => authStateRM.register(
              registerEmailRM(),
              registerPasswordRM(),
              registerUserIDRM(),
            ),
            child: 'Register'.text(textScaleFactor: 2).pad(),
          ).pad(),
          TextButton(
            onPressed: () => unAuthenticatedPageRM(UnAuthenticatedPage.login),
            child: 'Already a User. Login?'.text(),
          ).pad(),
        ],
      ),
    );
  }
}

final registerEmailRM = Simplicity('');
final registerUserIDRM = Simplicity('');
final registerPasswordRM = Simplicity('');

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
