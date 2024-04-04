import 'package:money/features/transactions/transactions.dart';
import 'package:money/main.dart';

part 'persons.freezed.dart';
part 'persons.g.dart';

final personsRM = RM.inject(
  Persons.new,
  persist: () => PersistState(
    key: 'persons',
    fromJson: (json) => Persons.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);
Persons get persons => personsRM.state;
set persons(Persons _) => personsRM.state = _;

Person? getPerson(String? personID) => persons.data[personID];
Map<String, Person> get personsData => persons.data;
List<Person> get listOfPersons => personsData.values.toList();

void setPerson(Person person) {
  persons = persons.copyWith(
    data: Map.of(personsData)..[person.personID] = person,
  );
}

void removePerson(String id) {
  persons = persons.copyWith(
    data: Map.of(personsData)..remove(id),
  );
}

@freezed
class Persons with _$Persons {
  const factory Persons({
    @Default(<String, Person>{}) final Map<String, Person> data,
  }) = _Persons;

  factory Persons.fromJson(Map<String, dynamic> json) =>
      _$PersonsFromJson(json);
}

@freezed
class Person with _$Person {
  const factory Person({
    required final String personID,
    required final String name,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Person;
  const Person._();
  List<Transaction> get transactions => listOfTransactions
      .where(
        (eachTransaction) => eachTransaction.personID == personID,
      )
      .toList();

  int get total => transactions.fold(
        0,
        (previousValue, eachTransaction) =>
            previousValue + eachTransaction.amount,
      );
  factory Person.fromJson(json) => _$PersonFromJson(json);
}
