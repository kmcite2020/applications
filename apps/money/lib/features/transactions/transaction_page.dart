import '../../main.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return TransactionBuilder(
      id: id,
      builder: (transaction) {
        if (transaction == null) return CircularProgressIndicator().pad();
        return Scaffold(
          appBar: AppBar(
            title: transaction.personID == null
                ? 'No user'.text()
                : GestureDetector(
                    onTap: () => navigator.to(
                      PersonPage(id: transaction.personID!),
                    ),
                    child: ((personsRM.get(transaction.personID!)).name).text(),
                  ),
            actions: [
              Switch(
                value: transaction.editing,
                onChanged: (editing) {
                  transactionsRM(
                    transaction.copyWith(editing: editing),
                  );
                },
              ).pad()
            ],
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  transaction.amount.text(textScaleFactor: 3).pad(),
                  transaction.editing
                      ? PopupMenuButton(
                          tooltip: 'select person for this transaction',
                          itemBuilder: (context) {
                            return personsRM().map(
                              (eachPerson) {
                                return PopupMenuItem(
                                  enabled:
                                      !(transaction.personID == eachPerson.id),
                                  onTap: () {
                                    transactionsRM(
                                      transaction.copyWith(
                                        personID: eachPerson.id,
                                      ),
                                    );
                                  },
                                  value: eachPerson,
                                  child: eachPerson.name.text(),
                                );
                              },
                            ).toList();
                          },
                        ).pad()
                      : SizedBox(),
                ],
              ),
              transaction.editing
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Amount Customizer:'.text(textScaleFactor: 2).pad(),
                        'Customise amount with the following. Single tap will add to the amount and double tap will decrement the amount.'
                            .text(textScaleFactor: 1.5)
                            .pad(),
                        Container(
                          margin: EdgeInsets.all(settingsRM().padding / 2),
                          padding: EdgeInsets.all(settingsRM().padding / 2),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(
                                settingsRM().borderRadius),
                          ),
                          child: Wrap(
                            children: [
                              1,
                              5,
                              10,
                              50,
                              100,
                              500,
                              1000,
                              5000,
                              10000,
                              50000,
                              100000,
                            ].map(
                              (e) {
                                return InkWell(
                                  child: e.text(textScaleFactor: 1.3).pad(
                                      custom: EdgeInsets.all(
                                          settingsRM().padding / 2)),
                                  onTap: transaction.editing
                                      ? () {
                                          transactionsRM(
                                            transaction.copyWith(
                                              amount: transaction.amount + e,
                                            ),
                                          );
                                        }
                                      : null,
                                  onDoubleTap: transaction.editing
                                      ? () {
                                          transactionsRM(
                                            transaction.copyWith(
                                              amount: transaction.amount - e,
                                            ),
                                          );
                                        }
                                      : null,
                                  borderRadius: BorderRadius.circular(
                                      settingsRM().borderRadius),
                                ).pad(
                                  custom:
                                      EdgeInsets.all(settingsRM().padding / 2),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
              'Date Created:'.text(textScaleFactor: 2).pad(),
              DateTimeUI(dateTime: transaction.created).pad(),
              'Notes:'.text(textScaleFactor: 2).pad(),
              transaction.editing
                  ? TextFormField(
                      initialValue: transaction.notes,
                      onChanged: (notes) {
                        transactionsRM(transaction.copyWith(notes: notes));
                      },
                    ).pad()
                  : transaction.notes.text().pad(),
            ],
          ),
        );
      },
    );
  }
}

class TransactionBuilder extends UI {
  const TransactionBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Widget Function(Transaction? transaction) builder;

  @override
  Widget build(BuildContext context) {
    final transaction = transactionsRM.tryGet(id);
    return builder(transaction);
  }
}
