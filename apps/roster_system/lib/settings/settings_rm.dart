import 'package:roster_system/main.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  Settings get initialState => const Settings();
  @override
  Persistor<Settings>? get persistor {
    return Persistor(
      key: 'settings',
      toJson: (state) => state.toJson(),
      fromJson: Settings.fromJson,
    );
  }
}
