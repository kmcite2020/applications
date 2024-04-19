import '../../main.dart';

part 'transactions.freezed.dart';
part 'transactions.g.dart';

final transactionsRM = TransactionsRM(
  'transactions',
  fromJson: Transaction.fromJson,
);

class TransactionsRM extends ComplexTable<Transaction> {
  TransactionsRM(
    super.key, {
    required super.fromJson,
  });

  int all() => state.values.fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );

  int get toGet => state.values
      .where(
        (element) => element.amount > 0,
      )
      .fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );
  int get toGive => state.values
      .where(
        (element) => element.amount < 0,
      )
      .fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required final String id,
    final String? personID,
    @Default(0) final int amount,
    @Default('notes') final String notes,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Transaction;
  factory Transaction.fromJson(json) => _$TransactionFromJson(json);
}
