export 'package:manager/manager.dart';
import 'features/home/home_page.dart';
import 'main.dart';

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
Directory get directory => directoryRM.state;

void main() => runApp(App());

class App extends TopUI {
  final dependencies = [
    RM.storageInitializer(HiveStorage()),
    directoryRM.initializeState()
  ];

  @override
  Widget homePage(BuildContext context) => HomePage();
}
