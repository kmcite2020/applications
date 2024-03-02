import 'package:manager/manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../../domain/models/models.dart';
import '../../../../blocs/patients_bloc.dart';

class ClassificationView extends ReactiveStatelessWidget {
  const ClassificationView({
    super.key,
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: patient.classification,
      items: Classification.values
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: e.text(),
            ),
          )
          .toList(),
      onChanged: (value) {
        patientsBloc.setClassification(value!, patient);
      },
    ).pad();
  }
}
