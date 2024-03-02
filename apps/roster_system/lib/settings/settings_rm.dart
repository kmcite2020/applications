import 'package:manager/manager.dart';
import 'package:manager/model.dart';
import 'package:roster_system/settings/settings.dart';

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
