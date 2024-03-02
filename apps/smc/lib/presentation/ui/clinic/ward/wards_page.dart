import 'package:flutter/material.dart';
import 'package:manager/manager.dart';
import '../../../blocs/patients_bloc.dart';
import '../../../../shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class WardsPage extends ReactiveStatelessWidget {
  static const path = '/clinic/ward';

  const WardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Patients - Ward'.text(),
      ),
      body: ListView.builder(
        itemCount: patientsBloc.admitted.length,
        itemBuilder: (_, i) {
          final pt = patientsBloc.admitted[i];
          return ListTile(title: pt.text());
        },
      ),
    );
  }
}
