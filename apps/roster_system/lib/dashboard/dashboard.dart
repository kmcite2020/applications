import 'package:roster_system/main.dart';

class DashboardPage extends Page {
  const DashboardPage({super.key});
  @override
  PreferredSizeWidget? appBar() {
    return AppBar(
      title: 'DASHBOARD'.text(),
    );
  }

  @override
  Widget? body() => Builder(builder: (context) {
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
      });
  @override
  Widget? floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
    );
  }
}
