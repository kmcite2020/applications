import 'package:roster_system/main.dart';
import 'package:roster_system/settings/settings.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  final initialState = Settings();
  @override
  Persistor<Settings>? get persistor => Persistor.freezed(
        key: 'settings',
        fromJson: Settings.fromJson,
      );
  void materialColor(materialColor) {
    state = state.copyWith(materialColor: materialColor);
  }

  void themeMode(themeMode) {
    setState(state.copyWith(themeMode: themeMode));
  }

  void borderRadius(borderRadius) {
    setState(state.copyWith(borderRadius: borderRadius));
  }
}
