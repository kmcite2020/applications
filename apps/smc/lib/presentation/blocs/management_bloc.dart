import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';

final ManagementBloc managementBloc = ManagementBloc();

class ManagementBloc {
  final management = RM.injectTextEditing();
  void addManagement({
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final now = DateTime.now();
    //     final psC = s.copyWith();
    //     final pC = psC.patients[patientID]!;
    //     final upC = pC.copyWith(
    //       managements: {
    //         ...pC.managements,
    //         now: Management(description: management.value, time: now),
    //       },
    //     );
    //     return psC.copyWith(
    //       patients: {
    //         ...psC.patients,
    //         upC.mr: upC,
    //       },
    //     );
    //   },
    // );
  }

  void removeManagement({
    required Management management,
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final patientsCopy = s.copyWith();
    //     final patientCopy = patientsCopy.patients[patientID]!;

    //     final updatedPatientCopy = patientCopy.copyWith(
    //       managements: {...patientCopy.managements}..remove(management.time),
    //     );
    //     return patientsCopy.copyWith(
    //       patients: {
    //         ...patientsCopy.patients,
    //         updatedPatientCopy.mr: updatedPatientCopy,
    //       },
    //     );
    //   },
    // );
  }

  /// INVESTIGATIONS
  final investigationName = RM.injectTextEditing();
  final investigationValue = RM.injectTextEditing();

  void addInvestigation({
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final now = DateTime.now();
    //     final psC = s.copyWith();
    //     final pC = psC.patients[patientID]!;
    //     final upC = pC.copyWith(
    //       investigations: {
    //         ...pC.investigations,
    //         now: Investigation(
    //           name: investigationName.value,
    //           value: investigationValue.value,
    //           time: now,
    //         ),
    //       },
    //     );
    //     return psC.copyWith(
    //       patients: {
    //         ...psC.patients,
    //         upC.mr: upC,
    //       },
    //     );
    //   },
    // );
  }

  void removeInvestigation({
    required Investigation investigation,
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final patientsCopy = s.copyWith();
    //     final patientCopy = patientsCopy.patients[patientID]!;

    //     final updatedPatientCopy = patientCopy.copyWith(
    //       investigations: {...patientCopy.investigations}..remove(investigation.time),
    //     );
    //     return patientsCopy.copyWith(
    //       patients: {
    //         ...patientsCopy.patients,
    //         updatedPatientCopy.mr: updatedPatientCopy,
    //       },
    //     );
    //   },
    // );
  }

  /// COMPLAINTS
  final complaintName = RM.injectTextEditing();
  final complaintHistory = RM.injectTextEditing();
  final complaintDuration = RM.injectFormField<double>(0);
  void addComplaint({
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final psC = s.copyWith();
    //     final pC = psC.patients[patientID]!;
    //     final complaint = Complaint(
    //       id: randomID,
    //       complaint: complaintName.value,
    //       history: complaintHistory.value,
    //       durationInDays: complaintDuration.value,
    //     );
    //     final upC = pC.copyWith(
    //       presentingComplaints: {
    //         ...pC.presentingComplaints,
    //         complaint.id: complaint,
    //       },
    //     );
    //     return psC.copyWith(
    //       patients: {
    //         ...psC.patients,
    //         upC.mr: upC,
    //       },
    //     );
    //   },
    // );
  }

  void removeComplaint({
    required Complaint investigation,
    required MR patientID,
  }) {
    // patientsBloc.patientsRM.setState(
    //   (s) {
    //     final patientsCopy = s.copyWith();
    //     final patientCopy = patientsCopy.patients[patientID]!;

    //     final updatedPatientCopy = patientCopy.copyWith(
    //       investigations: {...patientCopy.investigations}..remove(investigation.id),
    //     );
    //     return patientsCopy.copyWith(
    //       patients: {
    //         ...patientsCopy.patients,
    //         updatedPatientCopy.mr: updatedPatientCopy,
    //       },
    //     );
    //   },
    // );
  }
}
