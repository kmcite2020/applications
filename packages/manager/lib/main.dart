import 'package:states_rebuilder/scr/state_management/rm.dart' as rmi;

import 'manager.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends UI {
  const App({
    super.key,
  });
  @override
  void didMountWidget(BuildContext context) {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 'Manager'.text(),
        ),
        body: Column(
          children: [
            counterRM().text(textScaleFactor: 5).pad(),
            counterRMv2.state.text(textScaleFactor: 5).pad(),
          ],
        ),
        floatingActionButton: ButtonBar(
          children: [
            FloatingActionButton(
              onPressed: () {
                counterRM(counterRM() + 1);
                counterRMv2.setState((s) => s + 1);
              },
              child: Icon(Icons.add_circle_outline_sharp),
            ),
            FloatingActionButton(
              onPressed: () {
                counterRM(counterRM() - 1);
                counterRMv2.setState((s) => s - 1);
              },
              child: Icon(Icons.remove_circle_outline_sharp),
            ),
          ],
        ),
      ),
    );
  }
}

final counterRMv2 = rmi.ReactiveModelImp(
  creator: () => 0,
  initialState: 0,
  autoDisposeWhenNotUsed: false,
  stateInterceptorGlobal: null,
);
final counterRM = Simple(0);
