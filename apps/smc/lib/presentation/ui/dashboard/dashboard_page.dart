import 'package:smc/main.dart';
import 'package:smc/presentation/ui/admin/admin_page.dart';
import 'package:smc/presentation/ui/clinic/emergency_room/emergency_patients_ui.dart';
import 'package:smc/presentation/ui/configuration/configuration_ui.dart';

class DashboardPage extends UI {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: dashboardPageName.text(),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => RM.navigate.to(AdminPage()),
            child: 'Admin Page'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: () => RM.navigate.to(EmergencyPatientsPage()),
            child: 'Emergency Patients'.text(),
          ).pad(),
          const InfoWidgets(),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'settings',
            heroTag: randomID,
            onPressed: () {
              RM.navigate.to(SettingsPage());
            },
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
