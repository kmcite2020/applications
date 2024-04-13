import 'package:money/main.dart';

class TransactionsPage extends UI {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Transactions'.text(),
        actions: [
          IconButton(
            onPressed: () => transactionsRM.save(
              Transaction(
                id: randomID,
                created: DateTime.now(),
              ),
            ),
            icon: Icon(Icons.add),
          ).pad(),
        ],
      ),
      body: ListView.builder(
        itemCount: transactionsRM().length,
        itemBuilder: (context, index) {
          final transaction = transactionsRM()[index];
          return ExpansionTile(
            title: transaction.text(),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            initiallyExpanded: transaction.editing,
            maintainState: true,
            onExpansionChanged: (editing) {
              transactionsRM.save(
                transaction.copyWith(editing: editing),
              );
            },
            // title: personsRM
            //     .tryGet(transaction.personID ?? '')
            //     .name
            //     .text(textScaleFactor: 1.5)
            //     .pad(),
            subtitle: transaction.amount.text(textScaleFactor: 3),
            children: [
              Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      navigator.to(
                        TransactionPage(
                          id: transaction.id,
                        ),
                      );
                    },
                    child: 'Transaction'.text(),
                  ).pad(),
                  ElevatedButton(
                    onPressed: (transaction.personID == null)
                        ? null
                        : () => to(
                              PersonPage(
                                id: transaction.personID!,
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
                        itemBuilder: (context) => personsRM()
                            .map(
                              (eachPerson) => PopupMenuItem(
                                enabled:
                                    !(eachPerson.id == transaction.personID),
                                onTap: () => transactionsRM.save(
                                  transaction.copyWith(
                                    personID: eachPerson.id,
                                  ),
                                ),
                                value: eachPerson,
                                child: eachPerson.name.text(),
                              ),
                            )
                            .toList(),
                      ),
                      IconButton(
                        onPressed: () => transactionsRM.delete(transaction),
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
        },
      ),
    );
  }
}
