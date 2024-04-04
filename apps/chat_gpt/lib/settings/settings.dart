import 'package:chat_gpt/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text().pad(),
      ),
      body: ListView(
        children: [
          const UserCard(),
          const AccountSection(),
          const AppSection(),
          const SpeechSection(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.logout),
            title: 'Sign Out'.text(),
            iconColor: Colors.red,
            textColor: Colors.red,
          )
        ],
      ),
    );
  }
}

class UserCard extends UI {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Icon(
            Icons.supervised_user_circle,
            size: 50,
          ).pad(),
          'Adnan Farooq'.text(textScaleFactor: 2).pad(),
        ],
      ),
    );
  }
}

class AccountSection extends UI {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: 'Account'.text(textScaleFactor: .8).pad(),
        ).pad(),
        ListTile(
          leading: const Icon(Icons.email),
          title: 'EMAIL'.text().pad(),
        ),
        ListTile(
          leading: const Icon(Icons.monetization_on),
          title: 'SUBSCRIPTIONS'.text().pad(),
        ),
        ListTile(
          leading: const Icon(Icons.data_exploration),
          title: 'DATA CONTROLS'.text().pad(),
        ),
        ListTile(
          leading: const Icon(Icons.integration_instructions),
          title: 'CUSTOM INSTRUCTIONS'.text().pad(),
        ),
      ],
    );
  }
}

class AppSection extends UI {
  const AppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: 'App'.text(textScaleFactor: .8).pad(),
        ).pad(),
        DropdownButtonFormField(
          value: themeModeRM(),
          items: ThemeMode.values.map(
            (themeMode) {
              return DropdownMenuItem(
                value: themeMode,
                child: themeMode.name.toUpperCase().text(),
              );
            },
          ).toList(),
          onChanged: themeModeRM.call,
          decoration: const InputDecoration(
            labelText: 'COLOR SCHEME',
            prefixIcon: Icon(Icons.color_lens),
          ),
        ).pad(),
      ],
    );
  }
}

class SpeechSection extends UI {
  const SpeechSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: 'Speech'.text(textScaleFactor: .8).pad(),
        ).pad(),
        DropdownButtonFormField(
          value: VoiceOvers.juniper,
          items: VoiceOvers.values.map(
            (e) {
              return DropdownMenuItem(
                value: e,
                child: e.name.toUpperCase().text(),
              );
            },
          ).toList(),
          onChanged: (themeMode) {},
          decoration: const InputDecoration(
            labelText: 'VOICE',
            prefixIcon: Icon(Icons.voice_chat),
          ),
        ).pad(),
        DropdownButtonFormField(
          value: Languages.english,
          items: Languages.values.map(
            (e) {
              return DropdownMenuItem(
                value: e,
                child: e.name.toUpperCase().text(),
              );
            },
          ).toList(),
          onChanged: (themeMode) {},
          decoration: const InputDecoration(
            labelText: 'LANGUAGE',
            prefixIcon: Icon(Icons.language),
          ),
        ).pad(),
        'For best results select the language you speak. If not listed it may be supprted via auto detection.'
            .text()
            .pad(),
      ],
    );
  }
}

enum VoiceOvers { juniper, cove, sky, ember, breeze, elen }

enum Languages { english, urdu, arabic, pashto }
