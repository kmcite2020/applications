// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:apps/globals.dart';
import 'package:apps/main.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:apps/models/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../apps/FCPS/FCPS.dart';
import '../apps/HiveDB/hiveDB.dart';
import '../apps/beseechApp/beseechApp.dart';
import '../apps/bloodPressureManagerApp/bloodPressureManagerApp.dart';
import '../apps/commonSymptomsApp/commonSymptomsApp.dart';
import '../apps/googleFontsViewerApp/googleFontsViewerApp.dart';
import '../apps/hmisApp/hmisApp.dart';
import '../apps/hospitalApp/hospitalApp.dart';
import '../apps/idealApp/ui/dashboard.dart';
import '../apps/opthalmologyApp/app.dart';
import '../apps/opthalmologyMCQsManagerApp/main.dart';
import '../apps/prayersApp/prayerApp.dart';
import '../apps/prescriptionsApp/prescriptionsApp.dart';
import '../apps/settingsApp/settingsApp.dart';
import '../apps/dashboardApp/dashboard_app.dart';
import '../apps/timerApp/timerApp.dart';
import '../apps/todoApp/todoApp.dart';
import '../apps/userManagerApp/userManagerApp.dart';
import '../models/user_model.dart';
import 'authentication.dart';

part 'settings.g.dart';

@riverpod
class CurrentAppValue extends _$CurrentAppValue {
  @override
  build() {
    return AvailableApps.beseechApp;
  }
}

@riverpod
Widget currentApp(CurrentAppRef ref, AvailableApps availableApps) {
  switch (availableApps) {
    // case AvailableApps.idealApp:
    //   return Dashboard();
    // case AvailableApps.opthalmologyApp:
    //   return OpthalmologyMCQsApp();
    // case AvailableApps.timerApp:
    //   return TimerApp();
    // case AvailableApps.mcqsManagerApp:
    //   return MCQsManager();
    // case AvailableApps.prayersApp:
    //   return PrayersApp();
    // case AvailableApps.commonSymptomsApp:
    //   return CommonSymptomsApp();
    // case AvailableApps.hospitalApp:
    //   return hospitalApp;
    // case AvailableApps.prescriptionsApp:
    //   return PrescriptionsApp();
    // case AvailableApps.beseechApp:
    //   return BeseechApp();
    // case AvailableApps.bloodPressureManagerApp:
    //   return BloodPressureManagerApp();
    case AvailableApps.userManagerApp:
      return UserManagerApp();
    // case AvailableApps.hmisApp:
    //   return HMIS();
    // case AvailableApps.settingsApp:
    //   return SettingsApp();
    case AvailableApps.taskManagerApp:
      return const TaskManagerApp();
    // case AvailableApps.todoApp:
    //   return TodoApp();
    // case AvailableApps.fcpsApp:
    //   return FCPS();
    // case AvailableApps.hiveDB:
    //   return HiveDB();
    // case AvailableApps.googleFontsViewerApp:
    //   return GoogleFontsViewerApp();
    default:
      return const DashboardApp();
  }
}

class SettingsModel extends Equatable {
  final ThemeMode themeMode;
  final String font;
  final MaterialColor materialColor;
  final double padding;
  final double borderRadius;
  final AvailableApps? currentApp;
  final UserModel? currentUser;
  double get appBarHeight {
    if (padding <= 10) {
      return 60;
    } else if (padding <= 15 && padding > 10) {
      return padding * 6;
    } else {
      return 90;
    }
  }

  bool get authenticated => currentUser != null;

  const SettingsModel({
    required this.themeMode,
    required this.font,
    required this.materialColor,
    required this.padding,
    required this.borderRadius,
    required this.currentApp,
    required this.currentUser,
  });

  @override
  List<Object?> get props {
    return [
      themeMode,
      font,
      materialColor,
      padding,
      borderRadius,
      currentApp,
      currentUser,
    ];
  }

  SettingsModel copyWith({
    ThemeMode? themeMode,
    String? font,
    MaterialColor? materialColor,
    double? padding,
    double? borderRadius,
    AvailableApps? currentApp,
    UserModel? currentUser,
  }) {
    return SettingsModel(
      themeMode: themeMode ?? this.themeMode,
      font: font ?? this.font,
      materialColor: materialColor ?? this.materialColor,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      currentApp: currentApp ?? this.currentApp,
      currentUser: currentUser ?? this.currentUser,
    );
  }

  @override
  bool get stringify => true;
}

class SettingsNotifier extends StateNotifier<SettingsModel> {
  SettingsNotifier()
      : super(
          const SettingsModel(
            themeMode: ThemeMode.system,
            font: "Dosis",
            materialColor: Colors.blue,
            padding: 4,
            borderRadius: 4,
            currentApp: null,
            currentUser: null,
          ),
        );
  set themeMode(value) => state = state.copyWith(themeMode: value);
  set font(value) => state = state.copyWith(font: value);
  set padding(value) => state = state.copyWith(padding: value);
  set materialColor(value) => state = state.copyWith(materialColor: value);
  set borderRadius(value) => state = state.copyWith(borderRadius: value);
  set currentApp(value) => state = state.copyWith(currentApp: value);
  set currentUser(value) => state = state.copyWith(currentUser: value);

  void signIn(UserModel userModel) => currentUser = userModel;
  void signOut() => state = state.copyWith(currentUser: null);
  void exitApp() => state = state.copyWith(currentApp: null);
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsModel>(
  (ref) => SettingsNotifier(),
);
