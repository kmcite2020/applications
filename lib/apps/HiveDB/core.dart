// // ignore_for_file: prefer_const_constructors

// import 'dart:io';

// import 'package:dashboard/apps/HiveDB/databasePage.dart';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// Box get currentDB => databaseRM.state;
// bool get isWaiting => databaseRM.isWaiting;
// bool get hasError => databaseRM.hasError;
// String get error => databaseRM.error.message;
// final databaseRM = RM.inject<Box>(
//   () => throw UnimplementedError(),
// );
// Future<void> openBox() async {
//   try {
//     databaseRM.stateAsync = Hive.openBox(currentFileRM.state);
//     RM.navigate.to(DatabasePage());
//   } catch (e) {
//     print(e.toString());
//   }
// }

// final currentFileRM = RM.inject<String>(() => 'DEFAULT');

// List<FileSystemEntity> get files => filesRM.state;
// final filesRM = RM.injectFuture(getFilesInDocumentsDirectory);
// Future<List<FileSystemEntity>> getFilesInDocumentsDirectory() async {
//   Directory directory = await getApplicationDocumentsDirectory();
//   List<FileSystemEntity> files = directory.listSync();
//   print(files);
//   return files;
// }

// final keyFF = RM.injectTextEditing(
//   validators: [
//     (v) {
//       if (v!.isEmpty) {
//         return 'Error';
//       }
//       return null;
//     }
//   ],
// );
// final valueFF = RM.injectTextEditing(
//   validators: [
//     (v) {
//       if (v!.isEmpty) {
//         return 'Error';
//       }
//       return null;
//     }
//   ],
// );

// final addKeyValuePair = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     currentDB.put(keyFF.value, valueFF.value);
//     keyFF.reset();
//     valueFF.reset();
//   },
// );

// final indexFF = RM.injectFormField(
//   0,
//   validators: [
//     (index) {
//       if (index > currentDB.length) {
//         return 'No entry';
//       }
//       return null;
//     }
//   ],
// );
