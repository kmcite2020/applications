import '../../domain/models/models.dart';

final BioDataBloc bioDataBloc = BioDataBloc();

class BioDataBloc {
  void onAgeChanged({required double? age, required MR mr}) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final patientsCopy = s.copyWith();
    //     final patientCopy = patientsCopy.patients[mr]!;
    //     final updatedPatientCopy = patientCopy.copyWith(age: age);
    //     final updatedPatientsCopy = patientsCopy.copyWith(
    //       patients: {
    //         ...s.patients,
    //         updatedPatientCopy.mr: updatedPatientCopy,
    //       },
    //     );
    //     return updatedPatientsCopy;
    //   },
    // );
  }

  void onAddressChanged({required Address address, required MR mr}) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final patientsCopy = s.copyWith();
    //     final patientCopy = patientsCopy.patients[mr]!;
    //     final updatedPatientCopy = patientCopy.copyWith(address: address);
    //     final updatedPatientsCopy = patientsCopy.copyWith(
    //       patients: {
    //         ...s.patients,
    //         updatedPatientCopy.mr: updatedPatientCopy,
    //       },
    //     );
    //     return updatedPatientsCopy;
    //   },
    // );
  }
}
