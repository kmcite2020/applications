import 'package:roster_system/main.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DASHBOARD'.text(),
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: List.generate(
              2900,
              (x) {
                if (x == 1)
                  return ElevatedButton(
                    onPressed: () {
                      RM.scaffold.showBottomSheet(
                        BottomSheet(
                          onClosing: () {},
                          builder: (context) => Card.filled(),
                        ),
                      );
                    },
                    child: 'Reserve'.text(),
                  ).pad();
                return x.text(textScaleFactor: 5);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
