import 'package:manager/manager.dart';

/// !!! -> COMPLEX
/// define a class that extends a [Complex] class.
/// its a convention that you suffix the name with [RM].
/// in constructor body register all [Event]'s using
/// [register()] method.
/// then in the body of each [register] define logic to be
/// executed in each event case.
/// also define [initialState] getter in the class.

class CountRM extends Manager<int> {
  @override
  int get initialState => 0;
  void increment() => state++;
  void decrement() => state--;
}

/// also create an object of the complex class
/// its a convention that you suffix the name with [RM].

final countRM = CountRM();

/// define a base event class and then extend all
/// possible events class from that base class.
/// in UI
/// its a convention that you suffix the name
/// of the widget ui component with [UI].
/// also create a class extending UI object

class ManagerUI extends UI {
  const ManagerUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Manager'.text(),
      ),
      body: Column(
        children: [
          /// using the defined complex object you can use state.
          /// use the callable method will get you the current
          /// state of the [Complex]
          countRM().text(textScaleFactor: 8).pad(),
          IconButton.filled(
            onPressed: () => countRM.increment(),
            icon: Icon(Icons.add),
            iconSize: 150,
          ).pad(),
          IconButton.filled(
            onPressed: () => countRM.decrement(),
            icon: Icon(Icons.remove),
            iconSize: 120,
          ).pad(),
        ],
      ),
    );
  }
}
