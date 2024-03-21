import 'package:manager/manager.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 'Manager'.text(textScaleFactor: 1.3),
        ),
        body: "version: 1.0.0+1".text(textScaleFactor: 1.4).center(),
      ),
      theme: ThemeData.light(useMaterial3: false),
    ),
  );
}
