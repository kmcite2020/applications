import 'package:manager/manager.dart';

import '../../blocs/configuration_bloc.dart';
import '../../blocs/patients_bloc.dart';

class ClinicUI extends UI {
  static String path = '/clinic';

  const ClinicUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ...ClinicModel.models.map(
            (e) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(settings.borderRadius),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(settings.borderRadius),
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    title: e.name.text(),
                    subtitle: e.description.text(),
                    trailing: CircleAvatar(child: e.number.text()),
                  ),
                ),
              ),
            ).pad(),
          ),
        ],
      ),
    );
  }
}

class ClinicModel {
  String name = 'Emergency Room';
  String description = 'this is where emergency patienst are managed';
  late int number = patientsBloc.emergency.length;
  static List<ClinicModel> models = [
    ClinicModel(),
    ClinicModel()
      ..name = 'Ward'
      ..description = 'info'
      ..number = patientsBloc.admitted.length,
    ClinicModel()
      ..name = 'OPD'
      ..description = 'info'
      ..number = patientsBloc.opd.length,
  ];
}
