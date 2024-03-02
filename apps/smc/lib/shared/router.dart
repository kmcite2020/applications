import 'package:smc/presentation/ui/configuration/configuration_ui.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../presentation/ui/admin/admin_page.dart';
import '../presentation/ui/clinic/clinic_ui.dart';
import '../presentation/ui/clinic/emergency_room/emergency_patients_ui.dart';
import '../presentation/ui/clinic/emergency_room/er_page.dart';
import '../presentation/ui/clinic/opd/out_patient_department_ui.dart';
import '../presentation/ui/clinic/ward/wards_page.dart';
import '../presentation/ui/reception/reception.dart';

final router = RM.injectNavigator(
  initialLocation: Routes.dashboard,
  routes: {
    Routes.reception: (data) => const ReceptionUI(),
    Routes.settings: (data) => const SettingsPage(),
    Routes.admin: (data) => const AdminPage(),
    // Routes.dashboard: (data) => const DashboardPage(),
    Routes.patients: (data) => const ClinicUI(),
    Routes.er: (data) => const EmergencyPatientsPage(),
    ClinicUI.path: (data) => const ClinicUI(),
    EmergencyRoomUI.path: (data) => EmergencyRoomUI(),
    OutPatientDepartmentUI.path: (data) => const OutPatientDepartmentUI(),
    WardsPage.path: (data) => const WardsPage(),
  },
);

abstract class Routes {
  static const dashboard = '/dashboard';
  static const patients = '/patients';
  static const er = '/er';
  static const settings = '/settings';
  static const admin = '/admin';
  static const reception = '/reception';
}
