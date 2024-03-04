import 'package:hmis/main.dart';

import '../investigations/investigations_data.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Settings',
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: settingsRM.setThemeMode,
          ).pad(),
          Card(
            child: Center(child: 'HOSPITAL'.text().pad()),
          ),
          TextFormField(
            initialValue: settingsRM.state.hospitalName,
            onChanged: settingsRM.setHospitalName,
            maxLength: 4,
          ).pad(),
          FilledButton(
            onPressed: null,
            child: settingsRM.state.hospitalName.text(),
          ).pad(),
          Card(
            child: Center(
              child: 'DELETE ALL PATIENTS'.text().pad(),
            ),
          ),
          FilledButton(
            onPressed: patientsRM() == const Patients()
                ? null
                : () => patientsRM(
                      const Patients(),
                    ),
            child: 'DELETE ALL'.text(textScaleFactor: 1.5).pad(),
          ).pad(),
          FilledButton(
            onPressed: investigationsBuiltIn
                    .every(investigationsRM().cache.values.contains)
                ? null
                : () {
                    investigationsBuiltIn.forEach(investigationsRM.add);
                  },
            child: 'Built-In Investigations'.text(textScaleFactor: 1.5).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
