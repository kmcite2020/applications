// ignore_for_file: prefer_typing_uninitialized_variables, unused_element, avoid_print, prefer_const_constructors, unused_local_variable, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

/// GLOBAL VARIABLES - LOGIC SUPPORT & FEATURES MANAGEMENT

// final _isInitialized = RM.inject<bool>(
//   () => false,
//   persist: () => PersistState(key: 'IS_INITIALIZED'),
// );
// bool get isInitialized => _isInitialized.state;
// set isInitialized(bool value) => _isInitialized.state = value;

// /// DATE OF BIRTH
// final Injected<DateTime> birth = RM.inject(
//   () => DateTime.now(),
//   persist: () => PersistState(
//     key: "BIRTH_DATE",
//     toJson: (s) => jsonEncode(s.millisecondsSinceEpoch),
//     fromJson: (json) => DateTime.fromMillisecondsSinceEpoch(jsonDecode(json)),
//   ),
// );

// /// PUBERTY
// final Injected<DateTime> puberty = RM.inject(
//   () => DateTime.now(),
//   persist: () => PersistState(
//     key: "PUBERTY_DATE",
//     toJson: (s) => jsonEncode(s.millisecondsSinceEpoch),
//     fromJson: (json) => DateTime.fromMillisecondsSinceEpoch(jsonDecode(json)),
//   ),
// );

// /// USERNAME
// final Injected<String> username = RM.inject(
//   () => 'Adn',
//   persist: () => PersistState(key: "USER_NAME"),
// );

// /// PASSWORD
// var _password = RM.inject<String>(
//   () => '123456',
//   autoDisposeWhenNotUsed: false,
//   persist: () => PersistState(key: 'PASSWORD'),
// );

// /// BIO
// var _bio = RM.inject(
//   () => 'Welcome',
//   autoDisposeWhenNotUsed: false,
//   // debugPrintWhenNotifiedPreMessage: 'BIO',
// );

// /// SETTINGS

// /// PERSISTENT COUNTERS DATA
// final fajrRM = RM.inject<int>(() => 0, persist: () => PersistState(key: 'FAJR'), autoDisposeWhenNotUsed: false);
// final zuhrRM = RM.inject<int>(() => 0, persist: () => PersistState(key: 'ZUHR'), autoDisposeWhenNotUsed: false);
// final asarRM = RM.inject<int>(() => 0, persist: () => PersistState(key: 'ASAR'), autoDisposeWhenNotUsed: false);
// final maghribRM = RM.inject<int>(() => 0, persist: () => PersistState(key: 'MAGHRIB'), autoDisposeWhenNotUsed: false);
// final ishaRM = RM.inject<int>(() => 0, persist: () => PersistState(key: 'ISHA'), autoDisposeWhenNotUsed: false);
// // ALL PRAYERS COUNT
// final sumOfAllPrayersRM = RM.inject<int>(
//   () => fajrRM.state + zuhrRM.state + asarRM.state + maghribRM.state + ishaRM.state,
//   dependsOn: DependsOn(
//     {fajrRM, zuhrRM, asarRM, maghribRM, ishaRM},
//   ),
//   autoDisposeWhenNotUsed: false,
// );
// int get sumOfAllPrayers => sumOfAllPrayersRM.state;
