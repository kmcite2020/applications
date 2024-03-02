import 'package:hmis/main.dart';

class PatientsManagementPage extends UI {
  const PatientsManagementPage({super.key});
  static const name = '/patients';

  @override
  Widget build(BuildContext context) {
    return switch (patientsBloc.patientsPageViewMode) {
      PatientsPageViewMode.list => PatientsListWidget(),
      PatientsPageViewMode.fullscreen => PatientsFullscreenWidget(),
    };
  }
}
