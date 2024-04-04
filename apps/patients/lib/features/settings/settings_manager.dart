import '../../main.dart';

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject<Settings>(
    () => Settings.init(),
    autoDisposeWhenNotUsed: false,
    persist: () => PersistState(
      key: 'settings',
      toJson: (s) => jsonEncode(s.toJson()),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );
  Settings get settings => settingsRM.state;

  void setSettings(Settings settings) => settingsRM.state = settings;

  ThemeMode get themeMode => settings.themeMode;

  void onThemeModeChanged(themeMode) => setSettings(
        settings.copyWith(themeMode: themeMode),
      );

  MaterialColor get materialColor => settings.materialColor;

  void onMaterialColorChanged(materialColor) => setSettings(
        settings.copyWith(materialColor: materialColor),
      );

  double get borderRadius => settings.borderRadius;

  void setBorderRadius(double? borderRadius) => setSettings(
        settings.copyWith(borderRadius: borderRadius!),
      );

  double get padding => settings.padding;

  void setPadding(double? padding) {
    setSettings(
      settings.copyWith(padding: padding!),
    );
  }
}
