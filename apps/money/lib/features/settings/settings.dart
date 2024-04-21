import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

final settingsRM = ComplexLegacy<SettingsEvent, Settings>(
  Settings(),
  serializer: Serializer(
    key: 'settings',
    fromJson: Settings.fromJson,
  ),
)
  ..register<_SettingsEventThemeMode>(
    (_, state) => state.copyWith(themeMode: _.themeMode),
  )
  ..register<_SettingsEventColor>(
    (_, state) => state.copyWith(materialColor: _.materialColor),
  )
  ..register<_SettingsEventUseMaterial3>(
    (_, state) => state.copyWith(useMaterial3: _.useMaterial3),
  )
  ..register<_SettingsEventBackgroundImage>(
    (_, state) => state.copyWith(backgroundImagePath: _.backgroundImagePath),
  )
  ..register<_SettingsEventPadding>(
    (_, state) => state.copyWith(paddingEnum: _.paddingEnum),
  )
  ..register<_SettingsEventBorderRadius>(
    (_, state) => state.copyWith(borderRadiusEnum: _.borderRadiusEnum),
  )
  ..register<_SettingsEventFont>(
    (_, state) => state.copyWith(font: _.font),
  );

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeMode(ThemeMode themeMode) =
      _SettingsEventThemeMode;
  const factory SettingsEvent.color(MaterialColor materialColor) =
      _SettingsEventColor;
  const factory SettingsEvent.useMaterial3(bool useMaterial3) =
      _SettingsEventUseMaterial3;
  const factory SettingsEvent.backgroundImagePath(String backgroundImagePath) =
      _SettingsEventBackgroundImage;
  const factory SettingsEvent.padding(PaddingEnum paddingEnum) =
      _SettingsEventPadding;
  const factory SettingsEvent.borderRadius(BorderRadiusEnum borderRadiusEnum) =
      _SettingsEventBorderRadius;
  const factory SettingsEvent.font(String font) = _SettingsEventFont;
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
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @MaterialColorConverter()
    @Default(Colors.deepPurple)
    final MaterialColor materialColor,
    @Default(0) final int pageIndex,
    @Default(BorderRadiusEnum.full) final BorderRadiusEnum borderRadiusEnum,
    @Default(PaddingEnum.relaxed) final PaddingEnum paddingEnum,
    @Default('') final String? backgroundImagePath,
    @Default(true) final bool useMaterial3,
    @Default('Default') final String font,
  }) = _Settings;

  factory Settings.fromJson(json) => _$SettingsFromJson(json);

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
