import 'package:flutter/material.dart';
import 'package:manager/manager.dart';
import '../../../../shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../blocs/patients_bloc.dart';

class AdmittedPatients extends ReactiveStatelessWidget {
  const AdmittedPatients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: patientsBloc.admitted.length,
        itemBuilder: (_, i) {
          final pt = patientsBloc.admitted[i];
          return ListTile(
            title: pt.text(),
          );
        },
      ),
    );
  }
}
