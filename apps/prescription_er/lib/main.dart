import 'package:flutter/foundation.dart';

import 'main.dart';

export 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends TopUI {
  @override
  List<FutureOr<void>>? ensureInitialization() {
    return [
      SynchronousFuture(WidgetsFlutterBinding.ensureInitialized()),
      RM.storageInitializer(HiveStorage()),
    ];
  }

  @override
  Widget? splashScreen() {
    return CircularProgressIndicator().center();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 'Prescriptions'.text(),
        ),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
