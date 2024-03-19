part of 'manager.dart';

abstract class Page extends UI {
  const Page({super.key});

  PreferredSizeWidget? appBar() => null;
  Widget? body() => null;
  Drawer? drawer() => null;
  Drawer? endDrawer() => null;
  Widget? floatingActionButton() => null;
  Widget? navigationBar() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: endDrawer(),
      drawer: drawer(),
      appBar: appBar(),
      body: body(),
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: navigationBar(),
    );
  }
}

typedef UI = ReactiveStatelessWidget;
typedef TopUI = TopStatelessWidget;
