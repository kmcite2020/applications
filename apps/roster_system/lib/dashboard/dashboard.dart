import 'package:manager/manager.dart';
import 'package:roster_system/doctors/ui/doctors_page.dart';
import 'package:roster_system/main.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DASHBOARD'.text(),
      ),
      body: [
        DoctorsPage(),
        DepartmentsPage(),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

final index = Simple(0);
