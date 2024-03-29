import 'package:hmis/main.dart';

import '../investigations/investigations_data.dart';

final themeModeRM = RM.inject(() => <ThemeMode>{ThemeMode.system});

ThemeMode get themeMode => themeModeRM.state.first;

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
          SegmentedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            showSelectedIcon: false,
            segments: ThemeMode.values
                .map(
                  (e) => ButtonSegment(
                    value: e,
                    label: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            selected: themeModeRM.state,
            onSelectionChanged: (selections) => themeModeRM.state = selections,
          ).pad(),
          // Card(
          //   child: Center(child: 'HOSPITAL'.text().pad()),
          // ),
          // TextFormField(
          //   initialValue: settings.hospitalName,
          //   onChanged: setHospitalName,
          //   maxLength: 4,
          // ).pad(),
          FilledButton(
            onPressed: null,
            child: settingsRM.state.hospitalName.text(),
          ).pad(),
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
