import 'package:manager/manager.dart';

import '../../domain/models/models.dart';

final SettingsRM settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  Persistor<Settings>? get persistor {
    return Persistor(
      key: 'settings',
      toJson: (s) => s.toJson(),
      fromJson: Settings.fromJson,
    );
  }

  @override
  Settings get initialState => Settings.init();
}
