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
            value: settings.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: setThemeMode,
          ).pad(),
          Card(
            child: Center(child: 'HOSPITAL'.text().pad()),
          ),
          TextFormField(
            initialValue: settings.hospitalName,
            onChanged: setHospitalName,
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
            onPressed: patients == const Patients()
                ? null
                : () => setPatients(
                      const Patients(),
                    ),
            child: 'DELETE ALL'.text(textScaleFactor: 1.5).pad(),
          ).pad(),
          FilledButton(
            onPressed: investigationsBuiltIn
                    .every(investigations.cache.values.contains)
                ? null
                : () {
                    investigationsBuiltIn.forEach(addInvestigation);
                  },
            child: 'Built-In Investigations'.text(textScaleFactor: 1.5).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
