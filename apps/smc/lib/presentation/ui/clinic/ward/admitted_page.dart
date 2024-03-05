import 'package:smc/main.dart';

class AdmittedPatients extends UI {
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
