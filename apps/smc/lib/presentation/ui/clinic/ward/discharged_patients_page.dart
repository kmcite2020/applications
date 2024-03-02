import 'package:manager/manager.dart';

import '../../../blocs/patients_bloc.dart';

class DischargedPatientsUI extends UI {
  const DischargedPatientsUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: patientsBloc.discharged.length,
        itemBuilder: (_, i) {
          final pt = patientsBloc.emergency[i];
          return ListTile(
            title: pt.text(),
          );
        },
      ),
    );
  }
}
