import 'package:hmis/main.dart';
import 'package:isar/isar.dart';
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

@collection
class SettingsModel {
  final String id;
  final Map<String, dynamic> json;

  SettingsModel({
    required this.id,
    required this.json,
  });
  SettingsModel copy(Map<String, dynamic>? json) {
    return SettingsModel(
      id: id,
      json: json ?? this.json,
    );
  }
}
