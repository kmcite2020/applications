import 'package:money/main.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: [
        Scaffold(
          appBar: AppBar(
            title: 'Money'.text(),
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
            ],
          ),
        ),
        PersonsPage(),
        TransactionsPage(),
        SettingsPage(),
      ][navigationIndex()],
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationIndex(),
        onDestinationSelected: navigationIndex,
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
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

final navigationIndex = Simple(0);

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
