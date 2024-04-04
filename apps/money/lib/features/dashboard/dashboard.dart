import 'package:money/features/transactions/transactions.dart';

import '../../main.dart';
import '../persons/persons_page.dart';
import '../transactions/transactions_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              '${transactions()}'.text(textScaleFactor: 3).pad(),
              'To get'.text().pad(),
              '${transactions.toGet}'.text(textScaleFactor: 3).pad(),
              'To give'.text().pad(),
              '${transactions.toGive}'.text(textScaleFactor: 3).pad(),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              navigator.to(TransactionsPage());
            },
            child: 'Transactions'.text(textScaleFactor: 2).pad(),
          ).pad(),
          ElevatedButton(
            onPressed: () => navigator.to(
              PersonsPage(),
            ),
            child: 'Persons'.text(textScaleFactor: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}

class DateTimeUI extends StatelessWidget {
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
