import 'package:opthalmology/main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor materialColor,
    @Default(ThemeMode.system) final ThemeMode themeMode,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  final initialState = Settings();

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  void setMaterialColor(MaterialColor materialColor) {
    state = state.copyWith(materialColor: materialColor);
  }
}
