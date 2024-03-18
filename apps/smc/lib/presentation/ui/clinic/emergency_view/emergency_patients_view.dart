// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:manager/manager.dart';
import 'package:smc/shared/router.dart';

import '../../../../domain/models/models.dart';
import '../../../blocs/patients_bloc.dart';
import 'arrival_datetime.dart';
import 'complaints_view.dart';
import 'widgets/age_field_view.dart';
import 'widgets/classification_view.dart';
import 'widgets/cnic_view.dart';
import 'widgets/gender_view.dart';
import 'widgets/investigations_view.dart';
import 'widgets/name_field_view.dart';
import 'widgets/triage_view.dart';

class EmergencyPatientsView extends ReactiveStatelessWidget {
  const EmergencyPatientsView({super.key});

  @override
  Widget build(BuildContext context) {
    if (patientsBloc.patients.isEmpty) {
      return const Center(
        child: Text('No patients available'),
      );
    } else {
      return DefaultTabController(
        length: patientsBloc.patients.length,
        child: TabBarView(
          children: patientsBloc.patients.map(
            (patient) {
              return Scaffold(
                appBar: AppBar(
                  actions: [
                    ArrivalDateTimeView(dateTime: patient.arrivalAt),
                    Switch(
                      value: patient.isAttended,
                      thumbIcon: MaterialStateProperty.all(
                        Icon(
                          patient.isAttended ? Icons.done : Icons.close,
                        ),
                      ),
                      onChanged: (value) =>
                          patientsBloc.setAttention(value, patient),
                    ),
                    "${patientsBloc.patients.indexOf(patient) + 1}/${patientsBloc.patients.length}"
                        .text(textScaleFactor: 2)
                        .pad(),
                  ],
                  backgroundColor: patient.triage.color.withOpacity(.2),
                  leading: IconButton(
                    onPressed: () => router.back(),
                    icon: Icon(
                      genderIcon(
                        patient.gender,
                      ),
                    ),
                  ),
                  title: patient.name.text(),
                  bottom: TabBar(
                    tabs: patientsBloc.patients
                        .map(
                          (patient) => Tab(
                            text: patient.name,
                            icon: CircleAvatar(
                              backgroundColor:
                                  patient.triage.color.withOpacity(.8),
                              child:
                                  (patientsBloc.patients.indexOf(patient) + 1)
                                      .text(),
                            ),
                          ),
                        )
                        .toList(),
                    isScrollable: true,
                  ),
                ),
                body: ListView(
                  children: [
                    if (!patient.isAttended) CNICView(patient: patient),
                    // triageColor(patient: patient),
                    if (!patient.isAttended) NameFieldView(patient: patient),
                    if (!patient.isAttended) AgeFieldView(patient: patient),
                    if (!patient.isAttended)
                      ClassificationView(patient: patient),
                    if (!patient.isAttended) GenderView(patient: patient),
                    if (!patient.isAttended) TriageView(patient: patient),
                    // ArrivalDateTimeView(dateTime: patient.arrivalAt),
                    ComplaintsView(patient: patient),
                    // ManagementView(managements: patient.managements, mr: patient.mr),
                    InvestigationsView(patient: patient),
                    TextFormField(
                      initialValue: patient.diagnosis,
                      onChanged: (value) {
                        patientsBloc.setDiagnosis(
                          value,
                          patient,
                        );
                      },
                      decoration: const InputDecoration(
                        labelText: 'Diagnosis',
                      ),
                    ).pad(),
                    TextFormField(
                      initialValue: patient.provisionalDiagnosis,
                      onChanged: (value) {
                        // patientsBloc.updateProvisionalDiagnosis(
                        //   provisionalDiagnosis: value,
                        //   mr: patient.mr,
                        // );
                      },
                      decoration: const InputDecoration(
                        labelText: 'Provisional Diagnosis',
                      ),
                    ).pad()
                  ],
                ),
              );
            },
          ).toList(),
        ),
      );
    }
  }

  Widget triageColor({required Patient patient}) => Container(
        color: patient.triage.color,
        width: 200,
        height: 50,
        child: ArrivalDateTimeView(dateTime: patient.arrivalAt),
      ).pad();
  IconData genderIcon(Gender gender) {
    switch (gender) {
      case Gender.male:
        return Icons.male;
      case Gender.female:
        return Icons.female;
    }
  }
}
