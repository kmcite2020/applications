import 'package:hmis/main.dart';
import 'package:hmis/presentation/ui/patients_management/patient_widget.dart';
import 'package:hmis/presentation/ui/patients_management/patients_empty_widget.dart';

class PatientsListWidget extends UI {
  const PatientsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        leading: IconButton(
          onPressed: () {
            mainPagesRM(MainPages.home);
          },
          icon: FaIcon(FontAwesomeIcons.backward),
        ),
        title: 'Patients',
      ),
      body: patientsBloc.patients.isEmpty
          ? PatientsEmptyWidget()
          : ListView.builder(
              itemCount: patientsBloc.patients.length,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PatientWidget(
                  patient: patientsBloc.patients[index],
                );
              },
            ),
      floatingActionButton: floatingBar(),
    );
  }
}
