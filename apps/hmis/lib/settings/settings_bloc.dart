import 'package:hmis/settings/settings_model.dart';

import '../main.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  Settings get initialState => const Settings();

  void setThemeMode(value) => call(state.copyWith(themeMode: value));
  void setHospitalName(value) => call(state.copyWith(hospitalName: value));
  void setUserName(value) => call(state.copyWith(userName: value));

  @override
  Persistor<Settings>? get persistor {
    return Persistor(
      key: 'settings',
      toJson: (state) => state.toJson(),
      fromJson: Settings.fromJson,
    );
  }
}
