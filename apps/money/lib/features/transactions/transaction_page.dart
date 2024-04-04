import 'package:money/features/dashboard/dashboard.dart';
import 'package:money/features/persons/persons.dart';

import '../../main.dart';
import '../persons/person_page.dart';
import 'transactions.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({
    Key? key,
    required this.transactionID,
  }) : super(key: key);
  final String transactionID;

  @override
  Widget build(BuildContext context) {
    return TransactionBuilder(
      transactionID: transactionID,
      builder: (transaction) {
        if (transaction == null) return CircularProgressIndicator().pad();
        return Scaffold(
          appBar: AppBar(
            title: transaction.person == null
                ? 'No user'.text()
                : GestureDetector(
                    onTap: () => navigator.to(
                      PersonPage(personID: transaction.person!.personID),
                    ),
                    child: (transaction.person?.name).text(),
                  ),
            actions: [
              Switch(
                value: transaction.editing,
                onChanged: (editing) {
                  setTransaction(
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
                            return listOfPersons.map(
                              (eachPerson) {
                                return PopupMenuItem(
                                  enabled: !(transaction.person == eachPerson),
                                  onTap: () {
                                    setTransaction(
                                      transaction.copyWith(
                                          personID: eachPerson.personID),
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
                          margin: EdgeInsets.all(padding / 2),
                          padding: EdgeInsets.all(padding / 2),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(borderRadius),
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
                                      customPadding:
                                          EdgeInsets.all(padding / 2)),
                                  onTap: transaction.editing
                                      ? () {
                                          setTransaction(
                                            transaction.copyWith(
                                              amount: transaction.amount + e,
                                            ),
                                          );
                                        }
                                      : null,
                                  onDoubleTap: transaction.editing
                                      ? () {
                                          setTransaction(
                                            transaction.copyWith(
                                              amount: transaction.amount - e,
                                            ),
                                          );
                                        }
                                      : null,
                                  borderRadius:
                                      BorderRadius.circular(borderRadius),
                                ).pad(
                                  customPadding: EdgeInsets.all(padding / 2),
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
                        setTransaction(transaction.copyWith(notes: notes));
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

class TransactionBuilder extends StatelessWidget {
  const TransactionBuilder({
    Key? key,
    required this.transactionID,
    required this.builder,
  }) : super(key: key);
  final String transactionID;
  final Widget Function(Transaction? transaction) builder;

  @override
  Widget build(BuildContext context) {
    return InjectedBuilder(
      injectedRM: transactionsRM,
      builder: (transactions) => builder(
        getTransaction(transactionID),
      ),
    );
  }
}
