export 'dart:async';

export 'package:manager/manager.dart';
import 'package:roster_system/dashboard/dashboard.dart';

import 'main.dart';

void main() => runApp(App());

class App extends TopUI {
  @override
  Widget homePage(context) => DashboardPage();
}
