// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:manager/manager.dart';
import 'package:smc/shared/router.dart';

class OpenDrawerFloatingButton extends UI {
  const OpenDrawerFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Open Drawer',
      heroTag: randomID,
      onPressed: () {
        router.scaffold.openDrawer();
      },
      child: const Icon(Icons.book_sharp),
    );
  }
}
