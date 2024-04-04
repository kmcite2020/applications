import 'package:derma_handbook/main.dart';

import '../../core/router.dart';
import '../password_model.dart';
import '../settings.dart';

class PasswordChangerDialog extends ReactiveStatelessWidget {
  PasswordChangerDialog({super.key});

  bool get ableToChangePasswrd {
    if (passwordBloc.password.password == oldPasswordEditorController.value) {
      if (newPasswordEditorController.text ==
          repeatPasswordEditorController.text) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  final oldPasswordEditorController = RM.injectTextEditing();
  final newPasswordEditorController = RM.injectTextEditing();
  final repeatPasswordEditorController = RM.injectTextEditing();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(),
      child: Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: oldPasswordEditorController.controller,
                decoration: const InputDecoration(
                  labelText: 'Old Password',
                ),
              ).pad(),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: newPasswordEditorController.controller,
                decoration: const InputDecoration(
                  labelText: 'New Password',
                ),
              ).pad(),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: repeatPasswordEditorController.controller,
                decoration: const InputDecoration(
                  labelText: 'Repeat Password',
                ),
              ).pad(),
              MaterialButton(
                onPressed: ableToChangePasswrd
                    ? () {
                        passwordBloc.onPasswordChanged(
                            newPasswordEditorController.text);
                        navigator.back();
                      }
                    : null,
                color: settingsManager.settings.materialColor,
                child: 'CHANGE PASSWORD'.text(),
              ).pad(),
            ],
          );
        },
      ),
    );
  }
}
