import 'package:derma_handbook/main.dart';

import '../settings.dart';
import '../password_model.dart';
import 'password_changer_dialog.dart';

class UtilitiesWidget extends ReactiveStatelessWidget {
  const UtilitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: 'Utilities'
          .text(textScaleFactor: settingsManager.settings.headlineTextSize),
      subtitle: Column(
        children: [
          GestureDetector(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (_) {
                  return PasswordChangerDialog();
                },
              );
            },
            child: SwitchListTile(
              value: passwordBloc.password.isPasswordVisible,
              onChanged: passwordBloc.onPasswordVisibilityChanged,
              title: 'CHANGE PASSWORD'.text(),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  passwordBloc.password.isPasswordVisible
                      ? passwordBloc.password.password.text()
                      : '${'*' * passwordBloc.password.password.length} '
                          .text(),
                  'long press to change password'.text(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
