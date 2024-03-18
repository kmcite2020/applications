import '../main.dart';

Settings get settings => settingsRM.state;
final settingsRM = RM.inject(
  () => Settings(),
  persist: () => PersistState(
    key: "Settings",
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
  ),
);
void setSettings(Settings settings) => settingsRM.state = settings;

void setThemeMode(themeMode) {
  setSettings(settings.copyWith(themeMode: themeMode));
}

void setHospitalName(hospitalName) {
  setSettings(settings.copyWith(hospitalName: hospitalName));
}

void setUserName(userName) {
  setSettings(settings.copyWith(userName: userName));
}
