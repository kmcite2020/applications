import 'package:money/main.dart';

part 'persons.freezed.dart';
part 'persons.g.dart';

final personsRM = PersonsRM();

class PersonsRM extends ComplexTable<Person> {
  @override
  Persistor<Person>? get valuePersistor {
    return Persistor.freezed(
      key: 'persons',
      fromJson: Person.fromJson,
    );
  }
}

@freezed
class Person extends ID with _$Person {
  const factory Person({
    required final String id,
    required final String name,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Person;
  const Person._();
  List<Transaction> get transactions => transactionsRM()
      .where(
        (eachTransaction) => eachTransaction.personID == id,
      )
      .toList();

  int get total => transactions.fold(
      0,
      (previousValue, eachTransaction) =>
          previousValue + eachTransaction.amount);
  factory Person.fromJson(json) => _$PersonFromJson(json);
}
