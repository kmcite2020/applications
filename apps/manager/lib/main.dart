import 'package:manager/manager.dart';

void main() {
  runApp(App());
}

class App extends TopUI {
  const App({super.key});
  @override
  Widget homePage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.blue,
    );
  }
}
