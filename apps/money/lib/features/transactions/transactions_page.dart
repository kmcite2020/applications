import '../../main.dart';
import '../dashboard/dashboard.dart';
import '../persons/person_page.dart';
import '../persons/persons.dart';
import 'transaction_page.dart';
import 'transactions.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Transactions'.text(),
        actions: [
          IconButton(
            onPressed: () => setTransaction(
              Transaction.get(
                transactionID: randomID,
                created: DateTime.now(),
              ),
            ),
            icon: Icon(Icons.add),
          ).pad(),
        ],
      ),
      body: ListView.builder(
        itemCount: listOfTransactions.length,
        itemBuilder: (context, index) {
          final _transaction = listOfTransactions[index];
          return TransactionBuilder(
              transactionID: _transaction.transactionID,
              builder: (transaction) {
                if (transaction == null) return SizedBox();
                return ExpansionTile(
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  initiallyExpanded: transaction.editing,
                  maintainState: true,
                  onExpansionChanged: (editing) {
                    setTransaction(
                      transaction.copyWith(editing: editing),
                    );
                  },
                  title: (transaction.person?.name)
                      .text(textScaleFactor: 1.5)
                      .pad(),
                  subtitle: transaction.amount.text(textScaleFactor: 3),
                  children: [
                    Wrap(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            navigator.to(
                              TransactionPage(
                                transactionID: transaction.transactionID,
                              ),
                            );
                          },
                          child: 'Transaction'.text(),
                        ).pad(),
                        ElevatedButton(
                          onPressed: (transaction.personID == null)
                              ? null
                              : () => navigator.to(
                                    PersonPage(
                                      personID: transaction.personID!,
                                    ),
                                  ),
                          child: 'Person'.text(),
                        ).pad(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DateTimeUI(dateTime: transaction.created).pad(),
                        Row(
                          children: [
                            PopupMenuButton(
                              itemBuilder: (context) => listOfPersons
                                  .map(
                                    (eachPerson) => PopupMenuItem(
                                      enabled: !(eachPerson.personID ==
                                          transaction.personID),
                                      onTap: () => setTransaction(
                                        transaction.copyWith(
                                          personID: eachPerson.personID,
                                        ),
                                      ),
                                      value: eachPerson,
                                      child: eachPerson.name.text(),
                                    ),
                                  )
                                  .toList(),
                            ),
                            IconButton(
                              onPressed: () =>
                                  removeTransaction(transaction.transactionID),
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ).pad(),
                      ],
                    ),
                    'Notes'.text(textScaleFactor: 1.5).pad(),
                    transaction.notes.text().pad(),
                  ],
                );
              });
        },
      ),
    );
  }
}
