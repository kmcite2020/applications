// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../main.dart';
import '../dashboard/dashboard.dart';
import 'persons.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({
    Key? key,
    required this.personID,
  }) : super(key: key);
  final String personID;
  @override
  Widget build(BuildContext context) {
    return PersonBuilder(
      personID: personID,
      builder: (person) {
        if (person == null) return CircularProgressIndicator().pad();
        return Scaffold(
          appBar: AppBar(
            title: person.name.text(),
          ),
          body: ListView(
            children: [
              TextFormField(
                initialValue: person.name,
                onChanged: (name) {
                  setPerson(
                    person.copyWith(name: name),
                  );
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ).pad(),
              DateTimeUI(dateTime: person.created).pad(),
            ],
          ),
        );
      },
    );
  }
}

class PersonBuilder extends StatelessWidget {
  const PersonBuilder({
    Key? key,
    required this.personID,
    required this.builder,
  }) : super(key: key);
  final String personID;
  final Widget Function(Person? person) builder;

  @override
  Widget build(BuildContext context) {
    return InjectedBuilder(
      injectedRM: personsRM,
      builder: (persons) => builder(
        getPerson(personID),
      ),
    );
  }
}

class InjectedBuilder<T> extends StatelessWidget {
  const InjectedBuilder({
    Key? key,
    required this.injectedRM,
    required this.builder,
  }) : super(key: key);
  final Injected<T> injectedRM;
  final Widget Function(T state) builder;
  @override
  Widget build(BuildContext context) {
    Transform;
    return builder(injectedRM.state);
  }
}
