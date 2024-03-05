import 'package:smc/main.dart';

class OutPatientDepartmentUI extends UI {
  static const path = '/clinic/opd';

  const OutPatientDepartmentUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'OPD'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: patientsBloc.opd.length,
        itemBuilder: (_, i) {
          final Patient patient = patientsBloc.opd[i];
          return ListTile(
            title: patient.name.text(),
            leading: CircleAvatar(
              child: '5'.text(),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                patient.id.text(),
                patient.cnic.text(),
                patient.gender.text(),
                patient.isAttended.text(),
                patient.address.text(),
                patient.patientStatus.name.text(),
                patient.classification.name.text(),
                patient.triage.name.text(),
                patient.investigations.text(),
                patient.vitals.text(),
                patient.diagnosis.text(),
                patient.examinations.text(),
                patient.diagnosis.text(),
                patient.provisionalDiagnosis.text(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: const BackFloatingButton(),
    );
  }
}

// final selectedCaseTypes = RM.injectFormField<List<CaseType>>(
//   [],
//   validators: [
//     (val) {
//       if (val.isEmpty) {
//         return 'choose at least one item';
//       }
//       return null;
//     }
//   ],
// );
