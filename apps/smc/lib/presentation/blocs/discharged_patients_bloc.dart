// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../domain/models/models.dart';

final DischargedPatientsBloc dischargedPatientsBloc = DischargedPatientsBloc();

class DischargedPatientsBloc {
  // final dischargedPatientsRM = RM.inject(
  //   () => DischargedPatients(),
  // );
  // DischargedPatients get x => dischargedPatientsRM.state;
  // Map<MR, DischargedPatient> get dischargedPatients => x.dischargedPatients;

  addDischargedPatient(Patient value) {
    // dischargedPatientsRM.setState(
    //   (s) {
    //     return s.copyWith(
    //       dischargedPatients: {...dischargedPatients, value.mr: value},
    //     );
    //   },
    // );
  }

  removeDischargedPatient(MR mr) {
    // dischargedPatientsRM.setState(
    //   (s) {
    //     return s.copyWith(
    //       dischargedPatients: {...dischargedPatients}..remove(mr),
    //     );
    //   },
    // );
  }
}
