import 'package:money/features/persons/persons.dart';

import '../../main.dart';
import 'person_page.dart';

class PersonsPage extends StatelessWidget {
  const PersonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Persons'.text(),
        actions: [
          IconButton(
            onPressed: () => setPerson(
              Person(
                created: DateTime.now(),
                personID: randomID,
                name: '',
              ),
            ),
            icon: Icon(Icons.add),
          ).pad(),
        ],
      ),
      body: ListView.builder(
        itemCount: listOfPersons.length,
        itemBuilder: (context, index) {
          final person = listOfPersons[index];
          return ExpansionTile(
            key: Key(person.personID),
            leading: person.total.text(textScaleFactor: 1.5).pad(),
            title: person.name.text(textScaleFactor: 1.2),
            initiallyExpanded: person.editing,
            onExpansionChanged: (editing) {
              setPerson(
                person.copyWith(editing: editing),
              );
            },
            children: [
              ElevatedButton(
                onPressed: () {
                  navigator.to(
                    PersonPage(
                      personID: person.personID,
                    ),
                  );
                },
                child: 'Details'.text(),
              ).pad(),
              ...person.transactions.map(
                (eachTransaction) {
                  return eachTransaction.amount.text().pad();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
