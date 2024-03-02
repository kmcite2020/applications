import 'package:manager/manager.dart';
import '../../../../../domain/models/models.dart';
import '../../../../blocs/management_bloc.dart';
import '../arrival_datetime.dart';

class ManagementView extends UI {
  const ManagementView({
    Key? key,
    required this.managements,
    required this.mr,
  }) : super(key: key);
  final Map<DateTime, Management> managements;
  final MR mr;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: managements.values.map(
            (e) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ArrivalDateTimeView(dateTime: e.time).pad(),
                  IconButton(
                    onPressed: () {
                      managementBloc.removeManagement(
                          management: e, patientID: mr);
                    },
                    icon: const Icon(Icons.delete),
                  ).pad(),
                  e.description.text().pad(),
                ],
              );
            },
          ).toList(),
        ),
        TextField(
          controller: managementBloc.management.controller,
          decoration: InputDecoration(
            labelText: 'Add Management Notes',
            suffixIcon: IconButton(
              onPressed: () {
                managementBloc.addManagement(
                  patientID: mr,
                );
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
        ).pad(),
      ],
    );
  }
}
