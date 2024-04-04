import 'package:manager/manager.dart';

/// !!! -> COMPLEX
/// define a class that extends a [Complex] class.
/// its a convention that you suffix the name with [RM].
/// in constructor body register all [Event]'s using
/// [register()] method.
/// then in the body of each [register] define logic to be
/// executed in each event case.
/// also define [initialState] getter in the class.

final countRM = Simplicity(0);

/// also create an object of the complex class
/// its a convention that you suffix the name with [RM].
/// define a base event class and then extend all
/// possible events class from that base class.

/// in UI
/// its a convention that you suffix the name
/// of the widget ui component with [UI].
/// also create a class extending UI object

class SimplicityUI extends UI {
  const SimplicityUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Simplicity'.text(),
      ),
      body: Column(
        children: [
          /// using the defined complex object you can use state.
          /// use the callable method will get you the current
          /// state of the [Complex]
          countRM().text(textScaleFactor: 8).pad(),
          IconButton.filled(
            onPressed: () => countRM(countRM.state + 1),
            icon: Icon(Icons.add),
            iconSize: 150,
          ).pad(),
          IconButton.filled(
            onPressed: () => countRM(countRM.state - 1),
            icon: Icon(Icons.remove),
            iconSize: 120,
          ).pad(),
        ],
      ),
    );
  }
}
