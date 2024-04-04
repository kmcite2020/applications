import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

final settingsRM = RM.inject(
  () => Settings(),
  persist: () => PersistState(
    key: 'settings',
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    toJson: (state) => jsonEncode(state.toJson()),
  ),
);

Settings get settings => settingsRM.state;
set settings(Settings settings) => settingsRM.state = settings;

ThemeMode get themeMode => settings.themeMode;
set themeMode(themeMode) => settings = settings.copyWith(
      themeMode: themeMode,
    );
MaterialColor get materialColor => settings.materialColor;
set materialColor(materialColor) =>
    settings = settings.copyWith(materialColor: materialColor);
bool get useMaterial3 => settings.useMaterial3;
set useMaterial3(_) => settings = settings.copyWith(useMaterial3: _);

Uint8List? get backgroundImage => settings.backgroundImage;
set backgroundImagePath(String backgroundImagePath) =>
    settings = settings.copyWith(
      backgroundImagePath: backgroundImagePath,
    );
double get padding => settings.padding;
PaddingEnum get paddingEnum => settings.paddingEnum;
set paddingEnum(_) => settings = settings.copyWith(paddingEnum: _);

double get borderRadius => settings.borderRadius;
BorderRadiusEnum get borderRadiusEnum => settings.borderRadiusEnum;
set borderRadiusEnum(_) => settings = settings.copyWith(borderRadiusEnum: _);

get font => settings.font;
set font(_) => settings = settings.copyWith(font: _);
void resetSettings() => settings = Settings();

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
  factory Settings() => Settings.get(
        themeMode: ThemeMode.system,
        materialColor: Colors.blue,
        pageIndex: 0,
        borderRadiusEnum: BorderRadiusEnum.full,
        paddingEnum: PaddingEnum.relaxed,
        backgroundImagePath: '',
        useMaterial3: true,
        font: 'Default',
      );

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

  double get padding {
    return switch (paddingEnum) {
      PaddingEnum.none => 4,
      PaddingEnum.tight => 7,
      PaddingEnum.normal => 10,
      PaddingEnum.relaxed => 13,
    };
  }

  const Settings._();
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
