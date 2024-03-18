import 'package:manager/manager.dart';

import '../../domain/models/models.dart';

Settings get settings => settingsRM.state;
final settingsRM = RM.inject(
  () => Settings(),
  persist: () => PersistState(
    key: "Settings",
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
  ),
);

setSettings(Settings settings) => settingsRM.state = settings;

void setThemeMode(ThemeMode? value) {}

void setBorderRadius(double value) {}

void setPadding(double value) {}
