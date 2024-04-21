## states_rebuilder
library to manage state efficiently and easily.
created states are reactive to UI and persistent only if Persistor is provided.

what to do though.

isInitialized ? 



## Types of Reactives
### 1. RM:-
base class for other types. simplest form of reactive.
### 2. Manager (Notifier/Cubit):-
extends of RM class. analog of Notifier in flutter_riverpod or Cubit in flutter_bloc library.
### 3. Complex (Bloc):-
analog of bloc in flutter_bloc library. event based state management.
#### `Comparing differnet ways to manage state using Manager`

| RM   | Manager | Complex |
| ---- | ----    | ----    |
| global | notifier/cubit | bloc |
| create a final variable | create a class & also create methods in that class and and an instance of that class | create a class and create states and create events. then create an instance of that complex class |
| its like StateProvider<T> from riverpod | its like StateNotifier<T> from riverpod. or like Cubit<T> from flutter_bloc. | its like Bloc<Event,State> from flutter_bloc. |
|___|___|

In [UI] what you need.
Just you need to extend UI class -> a reactive widget with a build() method. and all flutter.
