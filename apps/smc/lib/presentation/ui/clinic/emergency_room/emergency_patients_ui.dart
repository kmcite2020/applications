import 'package:manager/manager.dart';
import '../../../blocs/patients_bloc.dart';
import '../../../../shared/router.dart';
import '../../../../shared/ui/back_floating_button.dart';

import '../../../../domain/models/models.dart';
import '../emergency_view/arrival_datetime.dart';
import '../emergency_view/emergency_patients_view.dart';

class EmergencyPatientsPage extends UI {
  const EmergencyPatientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonBar(
        children: [
          const BackFloatingButton(),
          if (!patientsBloc.isEmpty)
            FloatingActionButton(
              heroTag: randomID,
              onPressed: () {
                RM.navigate.to(
                  const EmergencyPatientsView(),
                );
              },
              child: const Icon(Icons.emergency),
            ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              patientsBloc.addPatientForm.submit();
            },
            child: const Icon(Icons.local_hospital),
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'PATIENTS'.text(),
      ),
      body: ListView.builder(
        itemCount: patientsBloc.patients.length,
        itemBuilder: (context, index) {
          final Patient patient = patientsBloc.patients[index];
          return ListTile(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        // child: (patient.age * 100).toInt().text(),
                        ),
                    ArrivalDateTimeView(dateTime: patient.arrivalAt),
                    Icon(patient.isAttended ? Icons.done : Icons.close)
                  ],
                ),
                patient.name.text(),
                // patient.mr.text(textScaleFactor: .9),
                Row(
                  children: [
                    IconButton(
                      tooltip: 'refer',
                      onPressed: () {},
                      icon: const Icon(Icons.replay_circle_filled_sharp),
                    ),
                    IconButton(
                      tooltip: 'admit',
                      onPressed: () {},
                      icon: const Icon(Icons.admin_panel_settings),
                    ),
                    IconButton(
                      tooltip: 'death',
                      onPressed: () {},
                      icon: const Icon(Icons.dangerous),
                    ),
                    IconButton(
                      tooltip: 'discharge',
                      onPressed: () async {
                        final HomeTreatmentPlan? homeTreatmentPlan =
                            await router.toPageless(
                          PrescriptionCreator(
                            patient: patient,
                          ),
                        );
                        if (homeTreatmentPlan == null) return;
                        patientsBloc.deletePatient(patient);
                        // dischargedPatientsBloc.addDischargedPatient(
                        //   DischargedPatient.fromPatient(
                        //     patient,
                        //     homeTreatmentPlan,
                        //   ),
                        // );
                      },
                      icon: const Icon(Icons.remove_circle),
                    ),
                  ],
                ),
              ],
            ),
            tileColor: patient.triage.color.withOpacity(.8),
          );
        },
      ),
    );
  }
}

class PrescriptionCreator extends UI {
  const PrescriptionCreator({
    super.key,
    required this.patient,
  });
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            initialValue: prescriptionName(),
            onChanged: prescriptionName.call,
            decoration: const InputDecoration(
              labelText: 'PRESCRIPTION',
            ),
          ).pad(),
          TextFormField(
            initialValue: prescriptionMedicine(),
            onChanged: prescriptionMedicine.call,
            decoration: const InputDecoration(
              labelText: 'MEDICINE',
            ),
          ).pad(),
          TextFormField(
            initialValue: prescriptionDose(),
            onChanged: prescriptionDose.call,
            decoration: const InputDecoration(
              labelText: 'DOSE',
            ),
          ).pad(),
          TextFormField(
            initialValue: prescriptionInstruction(),
            onChanged: prescriptionInstruction.call,
            decoration: const InputDecoration(
              labelText: 'INSTRUCTIONS',
            ),
          ).pad(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _addPrescription(),
                  child: 'ADD PRESCRIPITON'.text(),
                ).pad(),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    router.back(
                        // discharge(patient),
                        );
                  },
                  child: 'SAVE TREATMENT'.text(),
                ).pad(),
              ),
            ],
          ),
          // ..._homeTreatmentPlanRM.state.homeTreatment.values.map(
          //   (e) {
          //     return Column(
          //       children: [
          //         e.name.text(),
          //       ],
          //     );
          //   },
          // ),
          // _homeTreatmentPlanRM.state.homeTreatment.entries.length.text(),
        ],
      ),
    );
  }
}

// DischargedPatient discharge(Patient patient) {
//   return DischargedPatient.fromPatient(
//     patient,
//     _homeTreatmentPlanRM.state,
//   );
// }

final prescriptionName = Simple('');
final prescriptionMedicine = Simple('');
final prescriptionDose = Simple('');
final prescriptionInstruction = Simple('');

final _homeTreatmentPlanRM = Simple(
  const HomeTreatmentPlan(homeTreatment: {}),
);

void _addPrescription() {
  // ignore: unused_local_variable
  // Prescription prescription = Prescription();
  // _homeTreatmentPlanRM.state = _homeTreatmentPlanRM.state.copyWith(
  // homeTreatment: {
  //   ..._homeTreatmentPlanRM.state.homeTreatment,
  // },
  // );
}
// final String id;
// final String name;
// final Medicine medicine;
// final String dose;
// final String instructions;
