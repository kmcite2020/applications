import 'package:batteries/main.dart';
import 'package:get/get.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:batteries/app/app.dart';
export 'package:manager/manager.dart';

void main() => runApp(AppV2());

class AppV2 extends UIv5 {
  @override
  build() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            countRM.value.text().center(),
            ...listOfInts.map(
              (element) => ElevatedButton(
                onPressed: () {
                  listOfInts.remove(element);
                },
                child: element.text(),
              ).pad(),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countRM.value++;
            listOfInts.add(countRM.value);
          },
        ),
      ),
    );
  }
}

final countRM = 0.obs;
final listOfInts = <int>[].obs;
typedef UIv5 = ObxWidget;
