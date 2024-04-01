import 'package:manager/manager.dart';
import 'package:manager/state_manager/complex.dart';

void main() {
  runApp(App());
}

class App extends UI {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 'Manager'.text(textScaleFactor: 1.3),
        ),
        body: Column(
          children: [
            """
    version: 1.0.0+1
    Avaialble APIs:
    1. TopUI
    2. UI
    3. Page
    4. RM, Injected, and others from states_rebuilder
    Extensions:
    .text()
    .pad()
    .humane()
    .human()
    .isNull
    .isNotNull
    Other APIs:
    randomID
    HiveStorage()
    """
                .text()
                .center(),
            countRM().text(textScaleFactor: 5),
            ElevatedButton(
              onPressed: () {
                countRM(DecrementEvent());
              },
              child: '--'.text(textScaleFactor: 3),
            ).pad(),
            ElevatedButton(
              onPressed: () {
                countRM(IncrementEvent());
              },
              child: '++'.text(textScaleFactor: 2),
            ).pad(),
          ],
        ),
      ),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}

final countRM = CountRM();
