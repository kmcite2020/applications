import 'package:hmis/main.dart';

class PatientWidget extends UI {
  const PatientWidget({Key? key, required this.patient}) : super(key: key);
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // title: patient.bioData.names.patientFullName.text(30),
        // leading: CircleAvatar(
        //   child: patient.age.text(20),
        // ),
        onTap: () {
          // patientsBloc.setPatientsPageViewMode(PatientsPageViewMode.fullscreen);
          // PatientsFullscreenWidget.tabControllerRM.tabController.index =
          //     patientsBloc.patients.indexOf(patient);
        },
        subtitle: patient.id.text(textScaleFactor: 1.2),
        // trailing:
        // ((patient.dateTime?.year) ?? 2023 - patient.age.years).text(20),
      ),
    ).pad(
      customPad: EdgeInsets.all(
        settingsBloc.getPadding * 1.5 / 3,
      ),
    );
  }
}
