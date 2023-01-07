// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, unused_local_variable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const icon = Icon(Icons.dashboard);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBar(
              title: Text('dashboard'),
              actions: [
                CircleAvatar(
                  child: IconButton(
                    onPressed: () {
                      // Get.to(AccountManager());
                    },
                    icon: Icon(Icons.account_box),
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('prescriptions_saved'

                    // + prescriptionController.prescriptions.values.length.toString(),
                    ),
              ),
            ),
            InkWell(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Text(
                  //   'MEDICINES: ' '${prescriptionController.medicines.length}',
                  // ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LIST OF MEDICINES - MOST COMMONLY USED IN APP',
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LIST OF PRESCRIPTION NAMES - TAPPABLE TO THEIR DETAILS PAGE',
                ),
              ),
            ),
            // for (final item in prescriptionController.prescriptions.values)
            //   InkWell(
            //     onTap: () {
            //       Get.to(PrescriptionInfo(id: item['id']));
            //     },
            //     child: Text(
            //       item['medicine'].toUpperCase(),
            //       textScaleFactor: 2,
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
