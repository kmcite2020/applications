import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

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

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
