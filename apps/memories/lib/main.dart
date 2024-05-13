// ignore: unused_import
import 'main.dart';

export 'dart:developer' show log;
export 'package:manager/manager.dart';
export 'package:memories/memories/memory.dart';

void main() {
  runApp(const App());
}

class App extends TopUI {
  const App({super.key});

  @override
  Widget homePage(c) =>
      // DashboardPage();
      Scaffold(
        appBar: AppBar(
          title: 'Manager'.text(),
        ),
        body: Column(
          children: [
            TextFormField(
              initialValue: memoryRM().name,
              onChanged: (value) => memoryRM(Name(value)),
            ).pad(),
            TextFormField(
              initialValue: memoryRM().description,
              onChanged: (value) {
                memoryRM(Description(value));
              },
            ).pad(),
            TextFormField(
              initialValue: memoryRM().path,
              onChanged: (value) {
                memoryRM(Path(value));
              },
            ).pad(),
            memoryRM().text().pad()
          ],
        ),
        floatingActionButton: ButtonBar(
          children: [
            ElevatedButton(
              onPressed: () => countRM(I()),
              child: 'I'.text(),
            ),
            ElevatedButton(
              onPressed: () => countRM(D()),
              child: 'D'.text(),
            ),
          ],
        ),
      );
}

class E {}

class I extends E {}

class D extends E {}

final countRM = ComplexLegacy(
  0,
)
  ..register<I>((event, state) => state + 1)
  ..register<D>((event, state) => state - 1);

final memoryRM = ComplexLegacy<MemoryEvent, Memory>(
  Memory(id: randomID),
  serializer: Serializer(
    key: 'memory',
    fromJson: Memory.fromJson,
  ),
)
  ..register<Name>(
    (_, state) => state.copyWith(name: _.name),
  )
  ..register<Description>(
    (_, state) => state.copyWith(description: _.description),
  )
  ..register<Path>(
    (_, state) => state.copyWith(path: _.path),
  );

class MemoryEvent {
  const MemoryEvent();
}

class Name extends MemoryEvent {
  final String name;
  const Name(this.name);
}

class Description extends MemoryEvent {
  final String description;
  const Description(this.description);
}

class Path extends MemoryEvent {
  final String path;
  const Path(this.path);
}

final nameRM = Simple('');