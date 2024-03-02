import 'package:manager/manager.dart';

import '../../../../../domain/models/models.dart';
import '../../../../blocs/patients_bloc.dart';

class NameFieldView extends UI {
  const NameFieldView({
    super.key,
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: patient.name,
      onChanged: (value) {
        patientsBloc.setName(
          value,
          patient,
        );
      },
    ).pad();
  }
}
