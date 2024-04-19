import '../../main.dart';

class PersonPage extends UI {
  const PersonPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return PersonBuilder(
      id: id,
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
                  personsRM(
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

class PersonBuilder extends UI {
  const PersonBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Widget Function(Person? person) builder;

  @override
  Widget build(BuildContext context) => builder(personsRM.tryGet(id));
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
