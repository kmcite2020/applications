import 'package:rebuilder_docs/main.dart';

class DocumentationPage extends StatelessWidget {
  const DocumentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Documentation'.text(),
      ),
      body: ListView(
        children: [
          'Although states_rebuilder is a feature-rich library, the maintenance cost is very low, and the size of the library is small. this is because states_rebuilder does not draw a single pixel on the screen and the way the internal code is structured makes adding new functionality a straightforward process with fewer lines of code.'
              .text()
              .pad(),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}

final tableData = [];
