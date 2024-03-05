import 'package:smc/main.dart';

class OpenDrawerFloatingButton extends UI {
  const OpenDrawerFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Open Drawer',
      heroTag: randomID,
      onPressed: () {
        RM.scaffold.openDrawer();
      },
      child: const Icon(Icons.book_sharp),
    );
  }
}
