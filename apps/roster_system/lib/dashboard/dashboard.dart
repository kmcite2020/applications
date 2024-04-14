import 'package:manager/manager.dart';
import 'package:roster_system/main.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DASHBOARD'.text(),
      ),
      body: ListView(
        children: List.generate(
          10,
          (x) {
            if (x == 1)
              return ElevatedButton(
                onPressed: () {},
                child: 'Reserve'.text(),
              ).pad();
            return x.text(textScaleFactor: 5);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
