import 'package:manager/manager.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(8) final double borderRadius,
    @Default(8) final double padding,
    @Default(false) final bool studioMode,
    @Default(Colors.red)
    @MaterialColorConverter()
    final MaterialColor materialColor,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  const Settings._();
}

final class MaterialColorConverter
    implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

final settingsRM = SettingsRM(Settings());

class SettingsRM extends Simple<Settings> {
  SettingsRM(super.initialState);
}

// final themeModeRM = ThemeMode.system.obs(
//   persistor: (
//     key: 'themeMode',
//     toJson: (state) => {'themeMode': ThemeMode.values.indexOf(state)},
//     fromJson: (json) => ThemeMode.values[json['themeMode'] as int],
//   ),
// );
// final materialColorRM = Colors.amber.obs(
//   persistor: (
//     key: 'materialColor',
//     toJson: (state) => {'materialColor': Colors.primaries.indexOf(state)},
//     fromJson: (json) => Colors.primaries[json['materialColor'] as int],
//   ),
// );
// final borderRadiusRM = 8.0.obs();
// final paddingRM = 8.0.obs(
//   persistor: (
//     key: 'padding',
//     toJson: (state) => {'padding': state},
//     fromJson: (json) => json['padding'] as double,
//   ),
// );
