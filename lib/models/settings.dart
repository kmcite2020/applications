import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../views/apps.dart';
import '../apps/userManagerApp/userManagerApp.dart';
import 'enums.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const SettingsModel._();
  const factory SettingsModel({
    required final ThemeMode themeMode,
    required final String font,
    @MaterialColorSerializer() required final MaterialColor materialColor,
    required final double padding,
    required final double borderRadius,
    required final AvailableApps? currentApp,
    // required final UserModel? currentUser,
  }) = _SettingModel;
  factory SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);
  double get appBarHeight {
    if (padding <= 10) {
      return 60;
    } else if (padding <= 15 && padding > 10) {
      return padding * 6;
    } else {
      return 90;
    }
  }

// Widget get home => currentApp == null? DashboardApp() : ;

  Widget currentAppWidget() {
    switch (currentApp) {
      case AvailableApps.idealApp:
        return const UserManagerApp();
      case AvailableApps.opthalmologyApp:
        return const UserManagerApp();
      case AvailableApps.timerApp:
        return const UserManagerApp();
      case AvailableApps.mcqsManagerApp:
        return const UserManagerApp();
      case AvailableApps.prayersApp:
        return const UserManagerApp();
      case AvailableApps.commonSymptomsApp:
        return const UserManagerApp();
      case AvailableApps.hospitalApp:
        return const UserManagerApp();
      case AvailableApps.prescriptionsApp:
        return const UserManagerApp();
      case AvailableApps.beseechApp:
        return const UserManagerApp();
      case AvailableApps.bloodPressureManagerApp:
        return const UserManagerApp();
      case AvailableApps.userManagerApp:
        return const UserManagerApp();
      case AvailableApps.hmisApp:
        return const UserManagerApp();
      case AvailableApps.settingsApp:
        return const UserManagerApp();
      case AvailableApps.taskManagerApp:
        return const Apps();
      case AvailableApps.dashboard:
        return const Apps();
      case AvailableApps.fcpsApp:
        return const UserManagerApp();
      case AvailableApps.hiveDB:
        return const UserManagerApp();
      case AvailableApps.googleFontsViewerApp:
        return const UserManagerApp();
      case null:
        return const Apps();
    }
  }
}
