import '../main.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  Settings get initialState => settings;

  void setThemeMode(value) {
    settings = call(state.copyWith(themeMode: value));
  }

  void setHospitalName(value) {
    settings = call(state.copyWith(hospitalName: value));
  }

  void setUserName(value) {
    settings = call(state.copyWith(userName: value));
  }

  // @override
  // Persistor<Settings>? get persistor {
  //   return Persistor(
  //     key: 'settings',
  //     toJson: (state) => state.toJson(),
  //     fromJson: Settings.fromJson,
  //   );
  // }

  static Settings get settings {
    return isar.read(
      (isar) {
        final model = isar.settingsModels.get(id);
        if (model != null) {
          return Settings.fromJson(model.json);
        }
        return Settings();
      },
    );
  }

  static void set settings(Settings settings) {
    isar.write(
      (isar) => isar.settingsModels.put(
        SettingsModel(
          id: id,
          json: settings.toJson(),
        ),
      ),
    );
  }

  static const id = 'singleton';
}
