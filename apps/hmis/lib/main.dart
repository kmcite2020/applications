export 'package:hmis/presentation/ui/investigations_page/investigations_page.dart';
export 'package:hmis/presentation/ui/settings_page/settings_page.dart';

import 'main.dart';
export 'presentation/ui/patients_management/patients_management_page.dart';
export 'package:hmis/presentation/ui/widgets/custom_app_bar.dart';
export 'package:hmis/presentation/ui/widgets/leading_back_button.dart';
export 'package:hmis/domain/domain.dart';
export 'package:hmis/presentation/ui/patients_management/patients_list_widget.dart';
export 'package:hmis/domain/models/patient.dart';
export 'package:hmis/presentation/ui/patients_management/patient_add_dialog.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:manager/manager.dart';
export 'package:sizer/sizer.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:hmis/presentation/presentation.dart';
export 'package:hmis/presentation/ui/patients_management/patients_fullscreen_widget.dart';

export 'presentation/ui/home_page/home_page.dart';

part 'common/constants.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  RM.build(MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (
        context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return MaterialApp(
          navigatorKey: RM.navigate.navigatorKey,
          debugShowCheckedModeBanner: false,
          home: AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: switch (mainPagesRM()) {
              MainPages.home => HomePage(),
              MainPages.patients => PatientsManagementPage(),
              MainPages.investigatons => InvestigationsPage(),
              MainPages.settings => SettingsPage(),
            },
          ),
        );
      },
    );
  }
}

enum MainPages { home, patients, investigatons, settings }

final mainPagesRM = Simple(MainPages.home);
