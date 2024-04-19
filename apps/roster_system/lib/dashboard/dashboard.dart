import 'package:manager/manager.dart';
import 'package:roster_system/departments/ui/departments_page.dart';
import 'package:roster_system/doctors/ui/doctors_page.dart';
import 'package:roster_system/main.dart';
import 'package:roster_system/settings/settings_page.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DASHBOARD'.text(),
      ),
      body: [
        SettingsPage(),
        DepartmentsPage(),
        DoctorsPage(),
      ][index()],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index(),
        onDestinationSelected: index.call,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dock),
            label: 'Doctors',
          ),
          NavigationDestination(
            icon: Icon(Icons.departure_board),
            label: 'Departments',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

final index = Simple(0);
