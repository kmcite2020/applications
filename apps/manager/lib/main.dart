import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  run(App());
}

final documentsRM = RM.injectFuture(() => Documents.create);

class Documents {
  static Future<Documents> get create async {
    final get = (String name) => rootBundle.loadString('assets/$name.md');

    final _listOfStrings = <String>[];

    final _listOfFutures = [
      get('Introduction'),
      get('Manager'),
      get('BLoC Pattern'),
      get('Complex'),
      get('Documentation'),
      get('Simplicity'),
      get('State Manager'),
    ];
    for (final any in _listOfFutures) {
      final x = await any;
      _listOfStrings.add(x);
    }
    return Documents(_listOfStrings);
  }

  Documents(this.data) {}
  final List<String> data;

  Future<void> initApp() async {}
  List<String> call() => data;
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: documentsRM.build(
        (data) => Scaffold(
          body: SafeArea(
            child: Markdown(
              selectable: true,
              data: data()[index()],
              controller: ScrollController(),
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
                onPressed: index() >= data().length - 1
                    ? null
                    : () {
                        index(index() + 1);
                      },
                child: Icon(Icons.turn_right).pad(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final index = Simple(0);
