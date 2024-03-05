import 'package:batteries/main.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:batteries/app/app.dart';
export 'package:manager/manager.dart';

void main() async {
  RM.storageInitializer(HiveStorage());
  runApp(const App());
}
