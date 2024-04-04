import 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends UI {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (light, dark) {
        return MaterialApp(
          navigatorKey: RM.navigate.navigatorKey,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          darkTheme: ThemeData(colorScheme: dark),
          home: Scaffold(
            appBar: AppBar(
              title: 'Manager'.text(textScaleFactor: 1.3),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'State Management APIs'.text(textScaleFactor: 1.5).pad().card(),
                ElevatedButton(
                  onPressed: () => RM.navigate.to(ComplexUI()),
                  child: 'Complex'.text().pad(),
                ).pad(), //         """
                ElevatedButton(
                  onPressed: () => RM.navigate.to(ManagerUI()),
                  child: 'Manager'.text().pad(),
                ).pad(), //         """
                ElevatedButton(
                  onPressed: () => RM.navigate.to(SimplicityUI()),
                  child: 'Simplicity'.text().pad(),
                ).pad(), //         """
                'UI APIs'.text(textScaleFactor: 1.5).pad().card(),
                Wrap(
                  children: [
                    Chip(
                      label: 'UI'.text(),
                    ).pad(),
                    Chip(
                      label: 'TopUI'.text(),
                    ).pad(),
                    Chip(
                      label: 'Page'.text(),
                    ).pad(),
                  ],
                ).pad().card(),
              ],
            ),
          ),
          theme: ThemeData(colorScheme: light),
        );
      },
    );
  }
}
