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
class Settings with _$Settings implements Live<Settings> {
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

  @override
  Settings call([Settings? t]) => t != null ? settings = t : settings;
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

final settingsRM = RM.inject(
  () => Settings(),
);
set settings(Settings state) => settingsRM.state = state;
Settings get settings => settingsRM.state;
