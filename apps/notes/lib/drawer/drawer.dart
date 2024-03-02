import 'package:manager/manager.dart';

class DrawerPage extends UI {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        selectedIndex: navigationRM(),
        onDestinationSelected: navigationRM.call,
        children: [
          'NOTES'.text(textScaleFactor: 3).pad(),
          NavigationDrawerDestination(
            icon: const Icon(Icons.notes),
            label: 'Notes'.text(),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.settings),
            label: 'Settings'.text(),
          ),
        ],
      ),
    );
  }
}

final navigationRM = Simple(
  0,
  onTransition: (oldState, newState) {
    RM.navigate.back();
  },
  autoDispose: false,
);
