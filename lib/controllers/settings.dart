// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../apps/FCPS/FCPS.dart';
import '../apps/beseechApp/beseechApp.dart';
import '../apps/bloodPressureManagerApp/bloodPressureManagerApp.dart';
import '../apps/commonSymptomsApp/commonSymptomsApp.dart';
import '../views/apps.dart';
import '../apps/googleFontsViewerApp/googleFontsViewerApp.dart';
import '../apps/hmisApp/hmisApp.dart';
import '../apps/hospitalApp/hospitalApp.dart';
import '../apps/idealApp/ui/dashboard.dart';
import '../apps/opthalmologyApp/app.dart';
import '../apps/opthalmologyMCQsManagerApp/main.dart';
import '../apps/prayersApp/prayerApp.dart';
import '../apps/prescriptionsApp/prescriptionsApp.dart';
import '../views/settings/settings.dart';
import '../apps/timerApp/timerApp.dart';
import '../apps/todoApp/todoApp.dart';
import '../apps/userManagerApp/userManagerApp.dart';
import '../main.dart';
import '../models/enums.dart';
import '../models/settings.dart';
import '../models/user_model.dart';
import 'users.dart';

part 'settings.g.dart';

@riverpod
class Settings extends _$Settings {
  @override
  SettingsModel build() => const SettingsModel(
        themeMode: ThemeMode.system,
        font: "Dosis",
        materialColor: Colors.blue,
        padding: 4,
        borderRadius: 4,
        currentApp: null,
        currentUser: null,
      );

  void themeMode(ThemeMode value) => state = state.copyWith(themeMode: value);
  void font(value) => state = state.copyWith(font: value);
  void padding(value) => state = state.copyWith(padding: value);
  void materialColor(value) => state = state.copyWith(materialColor: value);
  void borderRadius(value) => state = state.copyWith(borderRadius: value);
  void currentApp(AvailableApps? value) {
    state = state.copyWith(currentApp: value);
    print(state.toJson());
  }

  void currentUser(UserModel value) => state = state.copyWith(currentUser: value);

  void signOut() => state = state.copyWith(currentUser: guestUser);
  void exitApp() => state = state.copyWith(currentApp: AvailableApps.dashboard);
  void signIn(String emailId, String password) {
    final users = ref.watch(usersProvider);
    final Settings settingsNotifier = ref.read(settingsProvider.notifier);
    for (final eachUser in users) {
      if (eachUser.email == emailId) {
        print('${eachUser.email} exists');
        if (eachUser.password == password) {
          print('password matched');
          settingsNotifier.currentUser(eachUser);
          // state = true;
        }
      } else {
        print('${eachUser.email} not given in textfield');
      }
    }
    // state = true;
  }
}
