import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../core/router.dart';
import '../diseases/pages/diseases.dart';
import '../search/pages/search.dart';
import '../settings/settings_page.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: IndexedStack(
        index: navigationIndex,
        children: [
          const SearchPage(),
          const DiseasesPage(),
          const SettingsPage(),
        ],
      ),
    );
  }
}

class MyDrawer extends ReactiveStatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        selectedIndex: navigationIndex,
        onDestinationSelected: (i) {
          onNavigationIndexChanged(i);
          navigator.back();
        },
        children: [
          'DERMA - HANDBOOK'.text(1.5).pad().pad(),
          SizedBox(height: 5),
          NavigationDrawerDestination(
            icon: Icon(Icons.search),
            label: 'Search'.text(),
          ),
          SizedBox(height: 5),
          NavigationDrawerDestination(
            icon: Icon(Icons.local_hospital),
            label: 'Diseases'.text(),
          ),
          SizedBox(height: 5),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: 'Settings'.text(),
          ),
          SizedBox(height: 5),
          Divider(),
          SizedBox(height: 5),
          NavigationDrawerDestination(
            icon: Icon(Icons.stacked_bar_chart),
            label: 'Add Diseases'.text(),
          ),
        ],
      ),
    );
  }
}

final _navigationIndexProvider = RM.inject(() => 0);
int get navigationIndex => _navigationIndexProvider.state;
void onNavigationIndexChanged(int i) => _navigationIndexProvider.state = i;
