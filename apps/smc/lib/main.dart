import 'main.dart';

export 'package:smc/presentation/ui/dashboard/dashboard_page.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart'
    hide FlexStringExtensions;
export 'package:manager/manager.dart';
export 'package:smc/presentation/blocs/patients_bloc.dart';
export 'package:smc/shared/router.dart';
export 'package:smc/shared/ui/back_floating_button.dart';
export 'package:smc/shared/common.dart';
export 'package:smc/presentation/ui/dashboard/info_widgets.dart';
export 'package:smc/presentation/ui/clinic/emergency_view/arrival_datetime.dart';
export 'package:smc/presentation/ui/clinic/emergency_view/emergency_patients_view.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:smc/presentation/blocs/staff_bloc.dart';
export 'package:smc/presentation/blocs/configuration_bloc.dart';

export 'package:smc/presentation/ui/admin/hospital_information_dialog.dart';

void main() => runApp(App());

class App extends TopUI {
  final dependencies = [
    Future.value(
      () => FlutterNativeSplash.preserve(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
      ),
    ),
    Future.delayed(
      1000.milliseconds,
      () => RM.storageInitializer(HiveStorage()),
    ),
  ];

  @override
  Widget homePage(BuildContext context) => DashboardPage();
}
