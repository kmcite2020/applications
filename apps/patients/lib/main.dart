import 'package:patients/main.dart';

export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:intl/intl.dart' hide TextDirection;
export 'package:path_provider/path_provider.dart';
export 'package:patients/features/core/core.dart';
export 'package:patients/features/core/hive_storage.dart';
export 'package:patients/features/core/ui/app.dart';
export 'package:patients/features/core/ui/home_page.dart';
export 'package:patients/features/patients/components/age.dart';
export 'package:patients/features/patients/components/create_patient_dialog.dart';
export 'package:patients/features/patients/components/patient_builder.dart';
export 'package:patients/features/patients/components/patient_tile.dart';
// export 'package:patients/features/patients/features/complaints.dart';
// export 'package:patients/features/patients/features/components/complaint_dialog.dart';
// export 'package:patients/features/patients/features/pages/complaints_page.dart';
export 'package:patients/features/patients/pages/patient_page/editing_mode_ui.dart';
export 'package:patients/features/patients/pages/patient_page/patient_page.dart';
export 'package:patients/features/patients/pages/patient_page/reading_mode_ui.dart';
export 'package:patients/features/patients/pages/patients_page.dart';
export 'package:patients/features/patients/patient/patient.dart';
export 'package:patients/features/patients/patients_manager.dart';
export 'package:patients/features/roster/components/roster_table.dart';
export 'package:patients/features/roster/components/table_cell_builder.dart';
export 'package:patients/features/roster/components/upcoming_duties.dart';
export 'package:patients/features/roster/duty_hours_calculator.dart';
export 'package:patients/features/roster/pages/roster_page.dart';
export 'package:patients/features/roster/roster.dart';
export 'package:patients/features/roster/roster_manager.dart';
export 'package:patients/features/roster/upcoming_duty_finder.dart';
export 'package:patients/features/settings/components/border_radius_modifier.dart';
export 'package:patients/features/settings/components/tools.dart';
export 'package:patients/features/settings/pages/settings_page.dart';
export 'package:patients/features/settings/settings.dart';
export 'package:patients/features/settings/settings_manager.dart';
export 'package:patients/features/settings/themes.dart';
export 'package:patients/features/user/user.dart';
export 'package:patients/features/user/user_ui.dart';
export 'package:states_rebuilder/scr/state_management/common/logger.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await directoryRM.initializeState();
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  runApp(
    const App(),
  );
}
