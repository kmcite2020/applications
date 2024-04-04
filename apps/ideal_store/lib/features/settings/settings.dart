import 'package:ideal_store/main.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(Colors.amber)
    @MaterialColorConverter()
    MaterialColor materialColor,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool isAddCustomerVisible,
    @Default(false) bool isThemeModesExtended,
    @Default(false) bool isColorsExtended,
    @Default(false) bool isFontsExtended,
    @Default('') String font,
    @Default(8.0) double padding,
    @Default(8.0) double borderRadius,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
