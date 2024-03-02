import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';
import 'package:notes/drawer/drawer.dart';
import 'package:notes/main.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  @override
  Settings get initialState => const Settings();

  void setViewMode(ViewMode? viewMode) => call(
        state.copyWith(viewMode: viewMode!),
      );

  void setThemeMode(ThemeMode? themeMode) => call(
        state.copyWith(themeMode: themeMode!),
      );
}

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
      drawer: const DrawerPage(),
      appBar: AppBar(),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (themeMode) {
              settingsRM.setThemeMode(themeMode);
            },
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().viewMode,
            items: ViewMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (viewMode) {
              settingsRM.setViewMode(viewMode);
            },
          ).pad(),
          summerRM().text(textScaleFactor: 5).pad(),
          ElevatedButton(
            onPressed: () {
              summerRM(0);
            },
            child: '+'.text(textScaleFactor: 5),
          ).pad(),
          ElevatedButton(
            onPressed: () {
              summerRM(1);
            },
            child: '-'.text(textScaleFactor: 5),
          ).pad(),
        ],
      ),
    );
  }
}
