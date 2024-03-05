import 'package:manager/manager.dart';

import '../router.dart';

class BackFloatingButton extends StatelessWidget {
  const BackFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: randomID,
      tooltip: 'back',
      onPressed: () {
        router.back();
      },
      child: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
