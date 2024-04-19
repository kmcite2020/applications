import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @MaterialColorConverter()
    @Default(Colors.blueGrey)
    final MaterialColor materialColor,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(0) final int pageIndex,
    @Default(1.0) final double textScaleFactor,
    @Default(8.0) final double borderRadius,
    @Default(8.0) final double padding,
  }) = _Settings;
  const Settings._();

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
}

final settingsRM = Complex(
  Settings(),
  setup: (setup) {
    setup<_SettingsEventMaterial>(
      (event, state) => state.copyWith(materialColor: event.materialColor),
    );
    setup<_SettingsEventThemeMode>(
      (event, state) => state.copyWith(themeMode: event.themeMode),
    );
    setup<_SettingsEventBorderRadius>(
      (event, state) => state.copyWith(borderRadius: event.borderRadius),
    );
  },
);

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.material(MaterialColor materialColor) =
      _SettingsEventMaterial;
  const factory SettingsEvent.themeMode(ThemeMode themeMode) =
      _SettingsEventThemeMode;
  const factory SettingsEvent.borderRadius(double borderRadius) =
      _SettingsEventBorderRadius;
}
