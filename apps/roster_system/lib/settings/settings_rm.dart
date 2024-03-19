import 'package:roster_system/main.dart';
import 'package:roster_system/settings/settings.dart';

final settingsRM = RM.inject(
  () => Settings(),
  persist: () => PersistState(
    key: 'settings',
    toJson: (state) => jsonEncode(state.toJson()),
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
  ),
);
Settings get settings => settingsRM.state;
void setSettings(Settings settings) => settingsRM.state = settings;

void setMaterialColor(materialColor) =>
    setSettings(settings.copyWith(materialColor: materialColor));

void setThemeMode(themeMode) =>
    setSettings(settings.copyWith(themeMode: themeMode));
