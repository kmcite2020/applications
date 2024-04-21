import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  run(App());
}

List<String> data = [];
final Map<String, String> cache = {};
Future<void> initApp() async {
  Future<String> get(String name) {
    return rootBundle.loadString('assets/$name.md');
  }

  final documents = [
    get('Introduction'),
    get('BLoC Pattern'),
    get('Complex'),
    get('Manager'),
    get('Documentation'),
    get('Simplicity'),
    get('State Manager'),
  ];
  for (final any in documents) {
    final x = await any;
    data.add(x);
  }
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Markdown(
          selectable: true,
          data: data[index()],
          styleSheet: MarkdownStyleSheet(
            h1: TextStyle(
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.green,
              decoration: TextDecoration.overline,
              fontSize: 30,
            ),
            h2: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.green,
              decoration: TextDecoration.overline,
            ),
            h6: TextStyle(
              fontSize: 12,
              backgroundColor: Colors.orange,
              decoration: TextDecoration.underline,
            ),
            a: TextStyle(
              backgroundColor: Colors.cyan,
              fontFamily: 'Fira Code',
            ),
            p: TextStyle(
              color: Colors.deepPurple,
              fontFamily: 'Corbel',
            ),
            codeblockDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amber.shade100,
            ),
            code: TextStyle(
              backgroundColor: Colors.transparent,
              fontFamily: 'Fira Code',
            ),
          ),
        ),
        floatingActionButton: ButtonBar(
          children: [
            FilledButton(
              onPressed: index() == 0
                  ? null
                  : () {
                      index(index() - 1);
                    },
              child: Icon(Icons.turn_left).pad(),
            ),
            FilledButton(
              onPressed: index() >= data.length - 1
                  ? null
                  : () {
                      index(index() + 1);
                    },
              child: Icon(Icons.turn_right).pad(),
            ),
          ],
        ),
      ),
    );
  }
}

final index = Simple(0);
