import 'package:derma_handbook/main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(Colors.blue)
    @MaterialColorConverter()
    final MaterialColor materialColor,
    @Default(8.0) final double padding,
    @Default(8.0) final double elevation,
    @Default(8.0) final double height,
    @Default(false) final bool areMoreColors,
    @Default(false) final bool isFirstStart,
    @Default(8.0) final double borderRadius,
    @Default(1.0) final double textScaleFactor,
    @Default(1.0) final double headlineTextSize,
    @Default(0) final int pageIndex,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(() => Settings());
  set settings(Settings value) => settingsRM.state = value;
  Settings get settings => settingsRM.state;

  void headlinTextSize(double? value) {
    settings = settings.copyWith(headlineTextSize: value!);
  }

  void themeMode(ThemeMode? value) {
    settings = settings.copyWith(themeMode: value!);
  }

  void padding(double value) {
    settings = settings.copyWith(padding: value);
  }

  void onBorderRadiusChanged(double value) {
    settings = settings.copyWith(borderRadius: value);
  }

  void materialColor(MaterialColor? value) {
    settings = settings.copyWith(materialColor: value!);
  }

  void elevation(double value) {
    settings = settings.copyWith(elevation: value);
  }

  void height(double value) {
    settings = settings.copyWith(height: value);
  }

  void isFirstStart(bool value) {
    settings = settings.copyWith(isFirstStart: value);
  }

  void onDestinationSelected(int value) {
    settings = settings.copyWith(pageIndex: value);
  }

  void areMoreColorsAvailable(bool? value) {
    settings = settings.copyWith(areMoreColors: value!);
  }
}
