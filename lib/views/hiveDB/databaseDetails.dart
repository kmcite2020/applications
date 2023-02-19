// ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_const_constructors
import 'package:flutter/material.dart';

class DatabaseDetailsPage extends StatelessWidget {
  const DatabaseDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(
          //   currentDB.name,
          // ),
          ),
      // body: ListView(
      //   shrinkWrap: true,
      //   children: currentDB.isEmpty
      //       ? [
      //           Padding(
      //             padding: EdgeInsets.all(padding),
      //             child: Text('Nothing found in database'),
      //           )
      //         ]
      //       : currentDB.keys
      //           .map(
      //             (key) => ListTile(
      //               title: KeyWidget(key),
      //               subtitle: KeyWidget(currentDB.toMap()[key]),
      //               trailing: IconButton(
      //                 icon: Icon(Icons.delete_forever),
      //                 onPressed: () {
      //                   currentDB.delete(key);
      //                   // Future.delayed(1.seconds);
      //                   // currentDatabaseRM.state = currentDB;
      //                 },
      //               ),
      //             ),
      //           )
      //           .toList(),
      // ),
    );
  }
}

class KeyWidget extends StatelessWidget {
  const KeyWidget(this.keyObject, {super.key});
  final String keyObject;
  @override
  Widget build(BuildContext context) {
    // final settingsModel = ref.watch(settingsProvider);
    return Container(
      // padding: EdgeInsets.all(settingsModel.padding),
      // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(settingsModel.borderRadius)),
      child: Text(keyObject),
    );
  }
}
