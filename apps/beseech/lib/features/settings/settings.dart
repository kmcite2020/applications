import 'package:manager/manager.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Complex<SettingsEvent, SettingsState> {
  SettingsRM() {
    register<_SettingsEventThemeMode>(
      (_) => state = state.copyWith(themeMode: _.themeMode),
    );
    register<_SettingsEventMaterialColor>(
      (_) => state = state.copyWith(materialColor: _.materialColor),
    );
    register<_SettingsEventBorderRadius>(
      (_) => state = (state.copyWith(borderRadius: _.borderRadius)),
    );
    register<_SettingsEventPadding>(
      (_) => state = (state.copyWith(padding: _.padding)),
    );
  }

  @override
  SettingsState get initialState => SettingsState();
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent() = _SettingsEvent;
  const factory SettingsEvent.themeMode(ThemeMode themeMode) =
      _SettingsEventThemeMode;
  const factory SettingsEvent.materialColor(
          @MaterialColorConverter() MaterialColor materialColor) =
      _SettingsEventMaterialColor;
  const factory SettingsEvent.borderRadius(double borderRadius) =
      _SettingsEventBorderRadius;
  const factory SettingsEvent.padding(double padding) = _SettingsEventPadding;
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(8) final double borderRadius,
    @Default(8) final double padding,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(Colors.amber)
    @MaterialColorConverter()
    final MaterialColor materialColor,
  }) = _SettingsState;
  factory SettingsState.fromJson(json) => _$SettingsStateFromJson(json);
}
