import 'package:smc/main.dart';

import '../../../blocs/patients_bloc.dart';

class WardsPage extends UI {
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
