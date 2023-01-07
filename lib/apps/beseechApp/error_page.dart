// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, prefer_const_constructors
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

class ErrorPage extends StatelessWidget {
  final error;
  const ErrorPage({super.key, this.error});
  static open(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: const Color.fromARGB(255, 255, 17, 0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(error.toString()),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
