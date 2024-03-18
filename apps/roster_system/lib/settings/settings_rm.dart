import 'package:roster_system/main.dart';
import 'package:roster_system/settings/settings.dart';

final settingsRM = SettingsRM();

class SettingsRM {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      toJson: (state) => jsonEncode(state.toJson()),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );
  Settings get state => settingsRM.state;
  set state(Settings value) => settingsRM.state = value;
}
