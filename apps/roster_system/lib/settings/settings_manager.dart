import 'package:roster_system/app_state.dart';
import 'package:roster_system/settings/settings.dart';

final settingsRM = SettingsRM();

class SettingsRM {
  Settings call([Settings? settings]) {
    if (settings != null) {
      appStateRM(appStateRM().copyWith(settings: settings));
    }
    return appStateRM.state.settings;
  }
}
