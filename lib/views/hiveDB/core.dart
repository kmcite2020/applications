// ignore_for_file: prefer_const_constructors

import 'dart:io';


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


// Future<List<FileSystemEntity>> listOfFiles(ListOfFilesRef ref, Future<Directory> directory) async {
//   return directory.then((value) => value.listSync());
// }


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
