import 'package:money/main.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: [
        Scaffold(
          appBar: AppBar(
            title: 'MONEY'.text(),
            actions: [
              IconButton(
                onPressed: () {
                  navigator.to(SettingsPage());
                },
                icon: Icon(
                  Icons.settings,
                ),
              ).pad(),
            ],
          ),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  'Total'.text().pad(),
                  '${transactionsRM.all()}'.text(textScaleFactor: 3).pad(),
                  'To get'.text().pad(),
                  '${transactionsRM.toGet}'.text(textScaleFactor: 3).pad(),
                  'To give'.text().pad(),
                  '${transactionsRM.toGive}'.text(textScaleFactor: 3).pad(),
                ],
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     navigator.to(TransactionsPage());
              //   },
              //   child: 'Transactions'.text(textScaleFactor: 2).pad(),
              // ).pad(),
              // ElevatedButton(
              //   onPressed: () => navigator.to(
              //     PersonsPage(),
              //   ),
              //   child: 'Persons'.text(textScaleFactor: 2).pad(),
              // ).pad(),
            ],
          ),
        ),
        PersonsPage(),
        TransactionsPage(),
      ][index()],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index(),
        onDestinationSelected: index,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Persons',
          ),
          NavigationDestination(
            icon: Icon(Icons.edit_document),
            label: 'Transactions',
          ),
        ],
      ),
    );
  }
}

final indexRM = RM.inject(() => 0);

final index =
    ([int? _index]) => _index != null ? indexRM.state = _index : indexRM.state;

class DateTimeUI extends UI {
  const DateTimeUI({
    super.key,
    required this.dateTime,
  });
  final DateTime dateTime;
  @override
  Widget build(BuildContext context) {
    final time = '${dateTime.hour}:${dateTime.minute}';
    final date = '${dateTime.day}-${dateTime.month}-${dateTime.year}';
    return (time + ' ' + date).text(textScaleFactor: 1.3);
  }
}
