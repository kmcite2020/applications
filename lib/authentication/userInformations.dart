// ignore_for_file: prefer_const_constructors, file_names

import "package:flutter/material.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../settings/settings.dart';
import '../utils.dart';

class UserInformations extends HookConsumerWidget {
  const UserInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final settingsModel = ref.watch(settingsProvider);
    final settingsNotifier = ref.watch(settingsProvider.notifier);
    return Card(
      child: ListTile(
        title: Text("ACCOUNT SETTINGS"),
        subtitle: settingsModel.authenticated
            ? Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("NAME: ${settingsModel.currentUser!.name}"),
                          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_outlined))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(settingsModel.padding),
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.memory(
                            defaultImage,
                          ),
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.update,
                      //   ),
                      // ),

                      Text("EMAIL: ${settingsModel.currentUser!.email}", softWrap: true),
                      Text(
                        "PHONE: ${settingsModel.currentUser!.age}",
                        softWrap: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(settingsModel.padding),
                    child: ElevatedButton(
                      onPressed: settingsNotifier.signOut,
                      child: Text(
                        "SIGN OUT",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(settingsModel.padding),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).errorColor),
                      onPressed: () async {},
                      child: Text(
                        "DELETE ACCOUNT permanently",
                      ),
                    ),
                  ),
                ],
              )
            : Text("no user is signed in"),
      ),
    );
  }
}
