import 'main.dart';

export 'package:smc/presentation/ui/dashboard/dashboard_page.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:manager/manager.dart';

void main() async {
  RM.build(MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      // theme: themes.theme(),
      // darkTheme: themes.darkTheme(),
      // themeMode: themes.themeMode,
      home: DashboardPage(),
    );
  }
}
