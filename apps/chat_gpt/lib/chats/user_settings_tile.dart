import 'package:chat_gpt/main.dart';
import 'package:chat_gpt/settings/settings.dart';

class UserSettingsTile extends ReactiveStatelessWidget {
  const UserSettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        navigator.to(SettingsPage());
      },
      leading: const CircleAvatar(
        child: Icon(
          Icons.supervised_user_circle,
        ),
      ),
      title: userName.text(),
      subtitle: 'tap to open settings'.text(),
      trailing: CircleAvatar(
        child: const Icon(
          Icons.settings,
        ),
      ),
    );
  }
}
