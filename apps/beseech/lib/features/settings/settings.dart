import 'package:manager/manager.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

final settingsBloc = SettingsBloc();

class SettingsBloc extends Complex<SettingsEvent, SettingsState> {
  SettingsBloc() {
    register<_SettingsEventThemeMode>(_OnSettingsEventThemeMode);
    register<_SettingsEventMaterialColor>(_OnSettingsEventMaterialColor);
    register<_SettingsEventBorderRadius>(_OnSettingsEventBorderRadius);
    register<_SettingsEventPadding>(_OnSettingsEventPadding);
  }

  // @override
  // SettingsState? fromJson(Map<String, dynamic> json) =>
  //     SettingsState.fromJson(json);

  // @override
  // Map<String, dynamic>? toJson(SettingsState state) => state.toJson();

  FutureOr<void> _OnSettingsEventThemeMode(event) {
    state = (state.copyWith(themeMode: event.themeMode));
  }

  FutureOr<void> _OnSettingsEventMaterialColor(event) {
    state = (state.copyWith(materialColor: event.materialColor));
  }

  FutureOr<void> _OnSettingsEventBorderRadius(event) {
    state = (state.copyWith(borderRadius: event.borderRadius));
  }

  FutureOr<void> _OnSettingsEventPadding(event) {
    state = (state.copyWith(padding: event.padding));
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

  factory SettingsEvent.fromJson(json) => _$SettingsEventFromJson(json);
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

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
