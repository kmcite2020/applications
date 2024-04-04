import 'package:opthalmology/features/dashboard/dashboard.dart';
import 'package:opthalmology/features/study_timer/sessions.dart';
import 'package:opthalmology/features/study_timer/studies.dart';

import '../main.dart';
import 'flash_groups/flash_groups.dart';

part 'app.freezed.dart';
part 'app.g.dart';

class App extends TopUI {
  const App({super.key});

  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  @override
  List<FutureOr<void>>? ensureInitialization() {
    return [
      WidgetsFlutterBinding.ensureInitialized(),
      RM.storageInitializer(HiveStorage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: themes.theme(),
      darkTheme: themes.darkTheme(),
      themeMode: themes.themeMode(),
      home: DashboardPage(),
    );
  }
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
