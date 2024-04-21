export 'dart:async';

export 'package:manager/manager.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:roster_system/dashboard/dashboard.dart';
import 'package:roster_system/settings/settings.dart';

import 'main.dart';

void main() => runApp(App());

class App extends TopUI {
  @override
  ThemeData get theme => FlexThemeData.light(
        useMaterial3: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM().borderRadius,
        ),
      );
  @override
  ThemeData get darkTheme => FlexThemeData.dark(
        useMaterial3: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM().borderRadius,
        ),
      );
  @override
  ThemeMode get themeMode => settingsRM().themeMode;
  @override
  Widget homePage(context) => DashboardPage();
}
