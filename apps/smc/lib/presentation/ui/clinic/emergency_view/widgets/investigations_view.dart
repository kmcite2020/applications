import 'package:manager/manager.dart';

import '../../../../../domain/models/models.dart';
import '../../../../blocs/management_bloc.dart';
import '../arrival_datetime.dart';

class InvestigationsView extends UI {
  const InvestigationsView({
    super.key,
    required this.patient,
  });
  final Patient patient;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...patient.investigations.map(
          (e) {
            return Column(
              children: [
                Row(
                  children: [
                    ArrivalDateTimeView(dateTime: e.time).pad(),
                    e.name.text().pad(),
                    e.value.text().pad(),
                    IconButton(
                      onPressed: () {
                        // managementBloc.removeInvestigation(
                        //   investigation: e,
                        //   patientID: patient.mr,
                        // );
                      },
                      icon: const Icon(
                        Icons.delete,
                      ),
                    )
                  ],
                ),
              ],
            );
          },
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                controller: managementBloc.investigationName.controller,
                decoration: const InputDecoration(
                  labelText: 'Advised Investigaion',
                ),
              ).pad(),
            ),
            Expanded(
              flex: 2,
              child: TextField(
                controller: managementBloc.investigationValue.controller,
                decoration: const InputDecoration(
                  labelText: 'Result',
                ),
              ).pad(),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  // managementBloc.addInvestigation(patientID: patient.mr);
                },
                icon: const Icon(Icons.add),
              ).pad(),
            ),
          ],
        )
      ],
    );
  }
}
