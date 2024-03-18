import 'package:manager/manager.dart';
import '../clinic/opd/out_patient_department_ui.dart';
import '../clinic/ward/discharged_patients_page.dart';

import '../../../shared/router.dart';
import '../../blocs/patients_bloc.dart';
import '../clinic/emergency_room/emergency_patients_ui.dart';

class InfoWidgets extends ReactiveStatelessWidget {
  const InfoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        // ElevatedButton.icon(
        //   icon: const Icon(Icons.dock),
        //   onPressed: () {},
        //   label: 'MO'.textify(),
        // ).pad,
        // ElevatedButton(
        //   onPressed: () {},
        //   child: 'WMO'.textify(),
        // ).pad,
        Container(
          color: Colors.lightBlue.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'Total Patients'.text().pad(),
              '${patientsBloc.patients.length}'.text(textScaleFactor: 2.4),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // router.toPageless(const PatientsPage());
                },
                child: 'Go to Patients'.text(),
              ).pad(),
            ],
          ),
        ).pad(),
        Container(
          color: Colors.lightBlue.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'OPD'.text().pad(),
              '${patientsBloc.patients.length}'.text(textScaleFactor: 2.4),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  router.toPageless(const OutPatientDepartmentUI());
                },
                child: 'Go to Patients'.text(),
              ).pad(),
            ],
          ),
        ).pad(),
        Container(
          color: Colors.lightBlue.withOpacity(0.1),
          child: Column(
            children: [
              'Emergency Room'.text().pad(),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  router.toPageless(
                    const DischargedPatientsUI(),
                  );
                },
                child: 'DISCHARGED'.text(),
              ).pad(),
              ElevatedButton(
                onPressed: () {
                  router.toPageless(
                    const EmergencyPatientsPage(),
                  );
                },
                child: 'EMERGENCY'.text(),
              ).pad(),
            ],
          ),
        ).pad(),
      ],
    );
  }
}
