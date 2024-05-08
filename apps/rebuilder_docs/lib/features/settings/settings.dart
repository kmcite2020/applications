import 'package:rebuilder_docs/main.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Topics with _$Topics {
  const factory Topics({
    @Default(<String, Topic>{}) final Map<String, Topic> cache,
  }) = _Topics;
  const Topics._();

  factory Topics.fromJson(Map<String, dynamic> json) => _$TopicsFromJson(json);
}

@freezed
class Topic with _$Topic {
  const factory Topic({
    required final String id,
    required final String title,
    required final String content,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class Settings with _$Settings {
  const factory Settings.raw({
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
    required final double borderRadius,
    required final double padding,
  }) = _Settings;
  const Settings._();
  factory Settings() => Settings.raw(
        themeMode: ThemeMode.system,
        borderRadius: 8,
        materialColor: Colors.brown,
        padding: 8,
      );
  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final settingsRM = RM.inject(
  Settings.new,
  persist: () => PersistState(
    key: 'settings',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
  ),
);

Settings settings([Settings? _settings]) {
  if (_settings != null) {
    settingsRM.state = _settings;
  }
  return settingsRM.state;
}
