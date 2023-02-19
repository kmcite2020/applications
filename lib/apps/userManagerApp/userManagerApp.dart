// ignore_for_file: prefer_const_constructors, await_only_futures, prefer_const_literals_to_create_immutables, file_names

import 'dart:math';

import 'package:apps/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../controllers/settings.dart';
import '../../controllers/users.dart';
import '../../utils.dart';
import '../../views/widgets/app_selector.dart';

class UserManagerApp extends HookConsumerWidget {
  const UserManagerApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final padding = ref.watch(settingsProvider).padding;
    final users = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('All Accounts'),
        actions: [AppSelectorToggle()],
      ),
      body: ListView(
        children: [
          for (final eachUser in users)
            Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                children: [
                  ListTile(
                    onTap: () => Navigator.pushNamed(context, "/UserDetails", arguments: eachUser),
                    leading: CircleAvatar(
                        // child: Text('${eachUser.age.inDays ~/ 365}'),
                        ),
                    title: Center(
                      child: Text(
                        eachUser.email,
                        textScaleFactor: .75,
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        Text(
                          eachUser.password,
                          textScaleFactor: .75,
                        ),
                        // Text("${eachUser.farzPrayers.inDays * 5}"),
                        // Text(
                        //   eachUser.name.toString(),
                        // ),
                        // Text(DateFormat('d-M-y').format(eachUser.dateOfBirth)),
                        // Text(
                        //   DateFormat('d-M-y').format(
                        //     eachUser.dateOfPuberty ?? DateTime.now(),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: Uuid().v1(),
            tooltip: 'destroy all users',
            onPressed: () {
              ref.read(usersProvider.notifier).removeAllUsers();
            },
            child: Icon(Icons.delete),
          ),
          FloatingActionButton(
            heroTag: Uuid().v1(),
            tooltip: 'add random user data',
            onPressed: () {
              ref.read(usersProvider.notifier).addUser(
                    Random().nextInt(1 << 32).toString(),
                    Random().nextInt(1 << 32).toString(),
                    Random().nextInt(1 << 32).toString(),
                  );
              // CLEAR ALL USERS FROM REPOSITORIES
            },
            child: Icon(Icons.add),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class UserDetails extends HookConsumerWidget {
  const UserDetails({required this.userModel, super.key});
  final UserModel userModel;
  final visible = false;
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userModel.name.toString()),
      ),
      body: Card(
        child: Center(
          child: Column(
            children: [
              Text(userModel.email),
              Text(userModel.password),
              // Text(userModel.dateOfBirth.toIso8601String()),
              // Text(userModel.dateOfPuberty.toString()),
              // Text(userModel.farzPrayers.toString()),
              Text(
                userModel.age.toString(),
              ),
              Column(
                children: [
                  visible
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 4,
                              child: TextFormField(
                                onFieldSubmitted: (value) {
                                  userModel.copyWith(name: value);
                                },
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                onPressed: () => visible,
                                child: Text(
                                  'HIDE',
                                ),
                              ),
                            )
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () => visible,
                          child: Text(
                            'EDIT NAME',
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
