// import '../../main.dart';

// final SettingsManager settingsManager = SettingsManager();

// class SettingsManager {
//   final settingsRM = RM.inject(
//     () => Settings(),
//     persist: () => PersistState(
//       key: 'settings',
//       fromJson: (json) => Settings.fromJson(jsonDecode(json)),
//       toJson: (s) => jsonEncode(s.toJson()),
//     ),
//   );

//   late final get = settingsRM.get;
// }

// final ThemeModeRM themeModeRM = ThemeModeRM();

// class ThemeModeRM {
//   ThemeMode call([ThemeMode? _themeMode]) {
//     if (_themeMode != null) {
//       settingsManager.get(
//         settingsManager.get().copyWith(themeMode: _themeMode),
//       );
//     }
//     return settingsManager.get().themeMode;
//   }
// }

// final MaterialColorRM materialColorRM = MaterialColorRM();

// class MaterialColorRM {
//   MaterialColor call([MaterialColor? _materialColor]) {
//     if (_materialColor != null) {
//       settingsManager.get(
//         settingsManager.get().copyWith(materialColor: _materialColor),
//       );
//     }
//     return settingsManager.get().materialColor;
//   }
// }
