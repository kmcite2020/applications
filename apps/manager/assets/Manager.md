###### version 1.0.0+1
# Simple

Consider the following straightforward example of a typical counter app. First, create a class that extends of StateNotifier and define the data type to be used for your state. In this example, we will use an int to represent the state of our counter app.
```dart
// import the Simple<T> class
import 'package:manager/manager.dart';

class CounterRM extends Simple<int>{
  // must override to provide initial state
  @override
  int get initialState => 0;
  // now define any methods/setters here to modify the state using state setter and getter.
  void increment(){
    state++;
  }
}
```
Now you need to create an instance for our CounterRM class


```dart
// create a global instance to use anywhere in the app
final counterRM = CounterRM();
```
As you may have noticed, we declare our counterRM as a global variable.

With this setup, we can now easily listen to and update our counter within our widgets.

```dart
import 'package:manager/manager.dart';
// 
class CounterUI extends UI {
  const CounterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // use callable to get the state in UI
        child: counterRM().text(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterRM.increment(), 
        // update the CounterRM state and rebuild the Consumer widget.
      ),
    );
  }
}
```

By default, our counterRM does not create an instance of CounterRM until it is needed.
<!-- In this scenario, the Consumer widget calls the read function of our counterProvider to check if an instance of CounterNotifier has been previously created and associated with our counterProvider. If not, it creates a new instance of CounterNotifier and associates it with our counterProvider. -->

<!-- IMPORTANT
Inside the Consumer widget, we use ref.watch(...) to create or retrieve our instance of CounterNotifier. This action also establishes a subscriber for state changes. As a result, our Consumer will be rebuilt every time the state of our CounterNotifier instance changes. -->

When the UI widget is destroyed, all subscribers created by it are removed from our CounterRM instance.

Note: By default, when a Simple<T> loses all its subscribers, the dispose function of StateNotifierProvider will be called, and our CounterRM instance will also be disposed.

You can disable the autoDispose feature using autoDispose: false when we create our provider.

```dart
class SomeRM extends Simple<SomeState> {
  @override
  // set to true to make it auto disposable
  // set to false to make it alive
  // by default its value is true
  bool get autoDispose => true;
}
```
keep in mind that when you disable the autoDispose feature, you must release all resources and the Simple<T> linked to our providers by calling the dispose function. For example you can use a StatefulWidget
```dart
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void dispose() {
    counterRM.dispose(); 
    // all resources and the Simple<T> linked to our provider
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YOUR_CODE;
  }
}
```