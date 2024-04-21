# Manager 

###### version 1.0.0+1

You can use BLoC pattern with `Manager`.
There are two ways to do it.
1. By creating a separate class that extends `Complex` class.
2. By instantiating a `Complex` object.
Your choice.

Also you need to define States and Events classes. The `Complex` takes two generic parameters `Event` and `State`. They should be passed through generics into the `Complex` class.

Also there are two ways to define events
1. Object events
2. Enumerated events

Both have there own pros and cons, but for simple things prefer Enumerated events and for Complex things use obect based events.

```dart
import 'package:manager/manager.dart';
/// also good practice to think of Event and State first.
abstract class CounterEvent {}
class Increment extends CounterEvent {}
class Decrement extends CounterEvent {}
/// First way
final counterRM = CounterBloc(0);
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState) {
    on<Increment>(
      (event, state) => state + 1,
    );
    on<Decrement>(
      (event, state) => state - 1,
    );
  }
}
/// Second way
final counterRM = Complex<CounterEvent, int>()
..register<Increment>(
	(event, state) => state + 1
)
..register<Decrement>(
	(event, state) => state - 1
)
;
/// Both ways are equivalent
```
Now to use it the Widgets or App. Just use the reference variable. Use the callable method to get the current state and pass an event into the call method to add event to the `Complex`. As easy as simple.

```dart
import 'package:manager/manager.dart';
/// This UI class automatically listen to changes
/// in any variable used inside.
class CounterPage extends UI {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: counterRM().text(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterRM(Increment()),
      ),
    );
  }
}
```
## NOTES
If you want to use the `freezed` package to generate your events using Union types and Sealed classes. Don't worry. The `Bloc` class is totally compatible with that.


