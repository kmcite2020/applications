import 'package:opthalmology/features/dashboard/dashboard.dart';
import 'package:opthalmology/features/settings/settings.dart';
import 'package:opthalmology/features/study_timer/sessions.dart';
import 'package:opthalmology/features/study_timer/studies.dart';

import '../main.dart';
import 'flash_groups/flash_groups.dart';

part 'app.freezed.dart';
part 'app.g.dart';

class App extends TopUI {
  @override
  Widget homePage(BuildContext context) {
    return DashboardPage();
  }

  ThemeData get theme => _theme();
  ThemeData get darkTheme => _darkTheme();
  ThemeMode get themeMode => settingsRM().themeMode;
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<String, FlashGroup>{}) final Map<String, FlashGroup> flashGroups,
    @Default(<String, Study>{}) final Map<String, Study> studies,
    @Default(<String, Session>{}) final Map<String, Session> sessions,
    @Default(<String, FlashCard>{}) final Map<String, FlashCard> flashCards,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

final appStateRM = RM.inject(
  () => AppState(),
  persist: () => PersistState(
    key: 'appState',
    fromJson: (json) => AppState.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);
AppState appState([AppState? _appState]) =>
    (_appState != null) ? appStateRM.state = _appState : appStateRM.state;

ThemeData _theme() => FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsRM().materialColor,
      ),
      subThemesData: const FlexSubThemesData(defaultRadius: 20),
      appBarStyle: FlexAppBarStyle.primary,
      lightIsWhite: true,
      useMaterial3: true,
    ).copyWith(
      switchTheme: SwitchThemeData(
        thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
        thumbColor: MaterialStatePropertyAll(
          settingsRM().materialColor.shade200,
        ),
      ),
    );

ThemeData _darkTheme() => FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsRM().materialColor,
        brightness: Brightness.dark,
      ),
      subThemesData: const FlexSubThemesData(defaultRadius: 20),
      appBarStyle: FlexAppBarStyle.primary,
      darkIsTrueBlack: true,
      useMaterial3: true,
    ).copyWith(
      switchTheme: SwitchThemeData(
        thumbIcon: const MaterialStatePropertyAll(Icon(Icons.color_lens)),
        thumbColor: MaterialStatePropertyAll(
          settingsRM().materialColor.shade200,
        ),
      ),
    );
