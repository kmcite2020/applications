import '../../main.dart';

class PersonsPage extends UI {
  const PersonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Persons'.text(),
        actions: [
          IconButton(
            onPressed: () => personsRM.save(
              Person(
                created: DateTime.now(),
                id: randomID,
                name: '',
              ),
            ),
            icon: Icon(Icons.add),
          ).pad(),
        ],
      ),
      body: ListView.builder(
        itemCount: personsRM().length,
        itemBuilder: (context, index) {
          final person = personsRM()[index];
          return ExpansionTile(
            key: Key(person.id),
            leading: person.total.text(textScaleFactor: 1.5).pad(),
            title: person.name.text(textScaleFactor: 1.2),
            initiallyExpanded: person.editing,
            onExpansionChanged: (editing) {
              personsRM.save(
                person.copyWith(editing: editing),
              );
            },
            children: [
              ElevatedButton(
                onPressed: () {
                  navigator.to(
                    PersonPage(
                      id: person.id,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
    );
  }
}
