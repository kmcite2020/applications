import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Complex<SettingsEvent, Settings> {
  SettingsRM() {
    register<_SettingsEventThemeMode>(
      (_) => state = state.copyWith(themeMode: _.themeMode),
    );
    register<_SettingsEventColor>(
      (_) => state = state.copyWith(materialColor: _.materialColor),
    );
    register<_SettingsEventUseMaterial3>(
      (_) => state = state.copyWith(useMaterial3: _.useMaterial3),
    );
    register<_SettingsEventBackgroundImage>(
      (_) => state = state.copyWith(backgroundImagePath: _.backgroundImagePath),
    );
    register<_SettingsEventPadding>(
      (_) => state = state.copyWith(paddingEnum: _.paddingEnum),
    );
    register<_SettingsEventBorderRadius>(
      (_) => state = state.copyWith(borderRadiusEnum: _.borderRadiusEnum),
    );
    register<_SettingsEventFont>(
      (_) => state = state.copyWith(font: _.font),
    );
  }

  @override
  Settings get initialState => Settings();
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeMode(themeMode) = _SettingsEventThemeMode;
  const factory SettingsEvent.color(materialColor) = _SettingsEventColor;
  const factory SettingsEvent.useMaterial3(useMaterial3) =
      _SettingsEventUseMaterial3;
  const factory SettingsEvent.backgroundImagePath(backgroundImagePath) =
      _SettingsEventBackgroundImage;
  const factory SettingsEvent.padding(paddingEnum) = _SettingsEventPadding;
  const factory SettingsEvent.borderRadius(borderRadiusEnum) =
      _SettingsEventBorderRadius;
  const factory SettingsEvent.font(font) = _SettingsEventFont;
}

enum BorderRadiusEnum {
  none,
  minimal,
  normal,
  extra,
  full;
}

enum PaddingEnum {
  none,
  tight,
  normal,
  relaxed;
}

@freezed
class Settings with _$Settings {
  const factory Settings.get({
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
    required final int pageIndex,
    required final BorderRadiusEnum borderRadiusEnum,
    required final PaddingEnum paddingEnum,
    required final String? backgroundImagePath,
    required final bool useMaterial3,
    required final String font,
  }) = _Settings;

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings() {
    return Settings.get(
      themeMode: ThemeMode.system,
      materialColor: Colors.blue,
      pageIndex: 0,
      borderRadiusEnum: BorderRadiusEnum.full,
      paddingEnum: PaddingEnum.relaxed,
      backgroundImagePath: '',
      useMaterial3: true,
      font: 'Default',
    );
  }

  Uint8List? get backgroundImage {
    try {
      File file = File(this.backgroundImagePath!);
      return file.readAsBytesSync();
    } catch (e) {
      return null;
    }
  }

  double get borderRadius {
    return switch (borderRadiusEnum) {
      BorderRadiusEnum.none => 2,
      BorderRadiusEnum.minimal => 5,
      BorderRadiusEnum.normal => 10,
      BorderRadiusEnum.extra => 17,
      BorderRadiusEnum.full => 30,
    };
  }

  double get padding => switch (paddingEnum) {
        PaddingEnum.none => 4,
        PaddingEnum.tight => 7,
        PaddingEnum.normal => 10,
        PaddingEnum.relaxed => 13,
      };
  const Settings._();
}
