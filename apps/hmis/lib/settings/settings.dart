import 'package:hmis/main.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const Settings._();
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default('') final String hospitalName,
    @Default('') final String userName,
  }) = _Settings;

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
}
