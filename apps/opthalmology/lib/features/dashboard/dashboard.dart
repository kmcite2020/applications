import 'package:opthalmology/features/flash_groups/flash_groups_page.dart';
import 'package:opthalmology/features/stats/stats_page.dart';
import 'package:opthalmology/features/study_timer/study_timer.dart';
import 'package:opthalmology/main.dart';

class DashboardPage extends Page {
  const DashboardPage({super.key});

  @override
  Widget? navigationBar() => NavigationBar(
        selectedIndex: dashboardIndex(),
        onDestinationSelected: dashboardIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.card_giftcard),
            label: 'FlashCards',
          ),
          NavigationDestination(
            icon: Icon(Icons.timer),
            label: 'StudyTimer',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_chart),
            label: 'Stats',
          ),
        ],
      );

  @override
  Widget body() {
    return [
      FlashGroupsPage(),
      StudyTimerPage(),
      StatsPage(),
    ][dashboardIndex()];
  }
}

final dashboardIndexRM = RM.inject(
  () => 0,
);

int dashboardIndex([int? destination]) {
  if (destination != null) dashboardIndexRM.state = destination;
  return dashboardIndexRM.state;
}
