import 'package:fcps_pearls/features/authenticated/exam/exam_mode.dart';
import 'package:fcps_pearls/features/un_authenticated/login/login_page.dart';
import 'package:fcps_pearls/features/un_authenticated/register/register_page.dart';
import 'package:fcps_pearls/features/authenticated/studio/studio_mode.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:manager/manager.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';

import '../../main.dart';
import '../auth_error/login_error_ui.dart';
import '../auth_state.dart';
import '../authenticated/authenticated.dart';
import '../un_authenticated/un_athenticated.dart';

final client = Client()
  ..setEndpoint('https://cloud.appwrite.io/v1')
  ..setProject('65b64b10d921fc9e7826')
  ..setSelfSigned(status: true);

void initialize() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await directoryRM.initializeState();
  // await RM.storageInitializer(HiveStorage());

  runApp(const App());
}

class App extends UI {
  const App({super.key});

  @override
  void didMountWidget(BuildContext context) {
    super.didMountWidget(context);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsRM().materialColor,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM().borderRadius,
        ),
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      ).copyWith(
        listTileTheme: ListTileThemeData(
          tileColor: settingsRM().materialColor.shade600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(settingsRM().borderRadius),
          ),
        ),
      ),
      darkTheme: FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsRM().materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM().borderRadius,
        ),
        useMaterial3: true,
        darkIsTrueBlack: true,
        appBarStyle: FlexAppBarStyle.primary,
      ).copyWith(
        listTileTheme: ListTileThemeData(
          tileColor: settingsRM().materialColor.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(settingsRM().borderRadius),
          ),
        ),
      ),
      themeMode: settingsRM().themeMode,
      home: switch (authStateRM().status) {
        AuthStatus.authenticated => AnimatedSwitcher(
            duration: 400.milliseconds,
            child: switch (authenticatedPageRM()) {
              AuthenticatedPage.home => HomePage(),
              AuthenticatedPage.settings => SettingsPage(),
              AuthenticatedPage.exam => ExamModePage(),
              AuthenticatedPage.studio => StudioModePage(),
              AuthenticatedPage.study => StudyModePage(),
              AuthenticatedPage.pearls => switch (pearlsPageRM().page) {
                  PearlPage.pearls => PearlsPage(),
                  PearlPage.pearlDetails =>
                    PearlDetailsPage(id: pearlsPageRM().id!),
                  PearlPage.editPearl => EditPearlPage(id: pearlsPageRM().id!),
                },
            },
          ),
        AuthStatus.unAuthenticated => AnimatedSwitcher(
            child: switch (unAuthenticatedPageRM()) {
              UnAuthenticatedPage.login => LoginPage(),
              UnAuthenticatedPage.register => RegisterPage(),
            },
            duration: 400.milliseconds,
          ),
        AuthStatus.waiting => Scaffold(
            body: CircularProgressIndicator().center(),
          ),
        AuthStatus.error => AuthErrorUI(
            error: authStateRM().error,
            stackTrace: authStateRM().stackTrace,
          ),
      },
    );
  }
}
