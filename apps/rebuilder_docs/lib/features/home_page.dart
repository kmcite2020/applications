import 'package:rebuilder_docs/main.dart';

import 'documentation/documentation_page.dart';

class HomePage extends UI {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: name.text(),
      ),
      body: ListView(
        children: [
          name.text(textScaleFactor: 3).pad(),
          Image.asset('assets/logo.png'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'states_rebuilder',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: ' is Flutter ',
                ),
                TextSpan(
                  text: 'state management',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: ' combined with a ',
                ),
                TextSpan(
                  text: 'dependency injection',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: ' solution and an ',
                ),
                TextSpan(
                  text: 'integrated router',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: ' to provide the best state management experience',
                ),
                TextSpan(
                  text: ', speeding up your development as well.',
                )
              ],
            ),
          ).pad(),
          'Documentation'.text(textScaleFactor: 2).pad(),
          ElevatedButton(
            onPressed: () {
              navigator.to(DocumentationPage());
            },
            child: 'Documentation'.text(),
          ).pad(),
          'Contribution'.text(textScaleFactor: 2).pad(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'There are multiple ways and places you can',
                ),
                TextSpan(
                  text: ' contribute to make this package nicer. ',
                ),
                TextSpan(
                  text: 'If you are wondering how to start please ',
                ),
                TextSpan(
                  text: 'post an issue and we`re',
                ),
                TextSpan(
                  text: ' here to help facilitate that',
                ),
                TextSpan(
                  text: '1. Asking question, leaving suggestion',
                ),
                TextSpan(
                  text: '2. Code commits and pull requests',
                ),
                TextSpan(
                  text: '3. Youtube promotion or Medium tutorial',
                ),
              ],
            ),
          ).pad(),
          'About'.text(textScaleFactor: 2).pad(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'It is a feature-rich state management solution',
                ),
                TextSpan(
                  text: '\nPerformance:-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '\nPredictable and controllable',
                ),
                TextSpan(
                  text: '\nSupport for immutable / mutable state',
                ),
                TextSpan(
                  text: '\nPrecise rebuild control',
                ),
                TextSpan(
                  text: '\nCode Clean:-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '\nSeparation of UI & business logic',
                ),
                TextSpan(
                  text: '\nCoding of business logic in pure Dart',
                ),
                TextSpan(
                  text: '\nZero Boilerplate without code-generation',
                ),
                TextSpan(
                  text: '\nUser Friendly:-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '\nElegant and lightweight syntax',
                ),
                TextSpan(
                  text: '\nSetState & Animation in StatelessWidget.',
                ),
                TextSpan(
                  text: '\nBuilt-in dependency injection system',
                ),
                TextSpan(
                  text: '\nRich built-in features',
                ),
                TextSpan(
                  text:
                      '\nSaving states to localDB - Theme, multi-langs - Navigation, show dialogs without BuildContext',
                ),
                TextSpan(
                  text: '\nEfficient Productivity:-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text:
                      '\nCREATE, READ, UPDATE, and DELETE (CRUD) from rest-API or database',
                ),
                TextSpan(
                  text: '\nUser authentication and authorization',
                ),
                TextSpan(
                  text: '\nApp themes management',
                ),
                TextSpan(
                  text: '\nInternalization and localization',
                ),
                TextSpan(
                  text: '\nMaintainable:-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '\nEasy to test and mock dependencies',
                ),
                TextSpan(
                  text: '\nState tracker middleware',
                ),
                TextSpan(
                  text: '\nBuilt-in debugging print function',
                ),
                TextSpan(
                  text: '\nCapable for complex Apps',
                ),
              ],
            ),
          ).pad()
        ],
      ),
    );
  }
}

final name = 'states_rebuilder';

final xxx = '''
About states_rebuilder




''';
