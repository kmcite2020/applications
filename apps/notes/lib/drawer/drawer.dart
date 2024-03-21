import 'package:notes/main.dart';

class DrawerPage extends UI {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navigation,
      onDestinationSelected: setNavigation,
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
    );
  }
}

int get navigation => navigationRM.state;
void setNavigation(int navigation) => navigationRM.state = navigation;
final navigationRM = RM.inject<int>(
  () => 0,
  sideEffects: SideEffects(
    onSetState: (_) => RM.navigate.back(),
  ),
  autoDisposeWhenNotUsed: false,
);
