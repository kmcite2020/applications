import 'package:notes/main.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

Settings get settings => settingsRM.state;
final settingsRM = RM.inject(
  () => Settings(),
  persist: () => PersistState(
    key: 'Settings',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Settings.fromJson(
      jsonDecode(json),
    ),
  ),
);
setSettings(Settings settings) => settingsRM.state = settings;

void setViewMode(ViewMode? viewMode) => setSettings(
      settings.copyWith(viewMode: viewMode!),
    );

void setThemeMode(ThemeMode? themeMode) => setSettings(
      settings.copyWith(themeMode: themeMode!),
    );

enum ViewMode { list, grid }

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ViewMode.list) final ViewMode viewMode,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(8.0) final double borderRadius,
    @Default(8.0) final double padding,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settings.themeMode,
            items: ThemeMode.values
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settings.viewMode,
            items: ViewMode.values
                .map(
                  (eachViewMode) => DropdownMenuItem(
                    value: eachViewMode,
                    child: eachViewMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: setViewMode,
          ).pad(),
        ],
      ),
    );
  }
}
