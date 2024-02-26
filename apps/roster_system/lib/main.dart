import 'package:extensions/main.dart';
import 'package:manager/manager.dart';
import 'package:manager/persistor.dart';

void main() {
  RM.build(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: 'Roster System'.text(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'You have pushed the button this many times: ${counterRM()}'.text(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterRM(counterRM() + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

final counterRM = CounterRM();

class CounterRM extends Cubit<int> {
  @override
  int get initialState => 0;
  @override
  Persistor<int>? get persistor {
    return Persistor(
      key: 'int',
      toJson: (state) => {'int': state},
      fromJson: (json) => json['int'],
    );
  }
}
