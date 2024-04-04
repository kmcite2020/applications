import '../../main.dart';
import '../persons/persons.dart';

part 'transactions.freezed.dart';
part 'transactions.g.dart';

final transactionsRM = RM.inject(
  Transactions.new,
  persist: () => PersistState(
    key: 'transactions',
    fromJson: (json) => Transactions.fromJson(
      jsonDecode(json),
    ),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);
Transactions get transactions => transactionsRM.state;
Map<String, Transaction> get transactionsData => transactions.data;
List<Transaction> get listOfTransactions =>
    transactionsData.values.toList().reversed.toList();
set transactions(Transactions _) => transactionsRM.state = _;

Transaction? getTransaction(String id) => transactions.data[id];
void setTransaction(Transaction transaction) {
  transactions = transactions.copyWith(
    data: Map.of(transactionsData)..[transaction.transactionID] = transaction,
  );
}

void removeTransaction(String transactionID) {
  transactions = transactions.copyWith(
    data: Map.of(transactionsData)..remove(transactionID),
  );
}

@freezed
class Transactions with _$Transactions {
  const factory Transactions({
    @Default(<String, Transaction>{}) final Map<String, Transaction> data,
  }) = _Transactions;
  const Transactions._();

  int call() => data.values.fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );

  int get toGet => data.values
      .where(
        (element) => element.amount > 0,
      )
      .fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );
  int get toGive => data.values
      .where(
        (element) => element.amount < 0,
      )
      .fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );
  factory Transactions.fromJson(json) => _$TransactionsFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction.get({
    required final String transactionID,
    final String? personID,
    @Default(0) final int amount,
    @Default('notes') final String notes,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Transaction;
  const Transaction._();
  Person? get person => getPerson(personID);
  factory Transaction.fromJson(json) => _$TransactionFromJson(json);
}
