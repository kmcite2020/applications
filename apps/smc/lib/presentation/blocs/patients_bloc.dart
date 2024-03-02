import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';

final PatientsBloc patientsBloc = PatientsBloc();

class PatientsBloc {
  final patientsRM = RM.inject(
    () => <Patient>[],
    autoDisposeWhenNotUsed: false,
    persist: () => PersistState(
      key: 'patients',
      toJson: Patient.toListJson,
      fromJson: Patient.fromListJson,
    ),
  );
  List<Patient> get patients => patientsRM.state;
  List<Patient> get attendedPatients =>
      patients.where((pt) => pt.isAttended).toList();
  List<Patient> get unAttendedPatients =>
      patients.where((pt) => !pt.isAttended).toList();

  List<Patient> get opd => patients
      .where(
        (element) => element.patientStatus == PatientStatus.opd,
      )
      .toList();
  List<Patient> get emergency => patients
      .where(
        (element) => element.patientStatus == PatientStatus.emergency,
      )
      .toList();
  List<Patient> get admitted => patients
      .where(
        (element) => element.patientStatus == PatientStatus.admitted,
      )
      .toList();
  List<Patient> get discharged => patients
      .where(
        (element) => element.patientStatus == PatientStatus.discharged,
      )
      .toList();

  bool get isWaiting => patientsRM.isWaiting;
  bool get isEmpty => patients.isEmpty;
  late final pageController = RM.injectTabPageView(length: patients.length);

  void setPatient(Patient patient) {
    // patientsRepository.setPatient(patient);
  }

  void deletePatient(Patient patient) {
    // patientsRepository.deletePatient(patient);
  }

  void setAttention(bool? value, Patient patient) {
    // setPatient(patient..isAttended = value!);
  }

  void setCNIC(CNIC cnic, Patient patient) {
    // setPatient(patient..cnic = cnic);
  }

  void setGender(Gender gender, Patient patient) {
    // setPatient(patient..gender = gender);
  }

  void setTriage(Triage triage, Patient patient) {
    // setPatient(patient..triage = triage);
  }

  void setClassification(Classification classification, Patient patient) {
    // setPatient(patient..classification = classification);
  }

  void setDiagnosis(String diagnosis, Patient patient) {
    // setPatient(patient..diagnosis = diagnosis);
  }

  void setName(String name, Patient patient) {
    // setPatient(patient..name = name);
  }

  void setResrrve(CNIC cnic, Patient patient) {
    // setPatient(patient..cnic = cnic);
  }

  /// NEW PATIENT MANAGEMENT

  late final addPatientForm = RM.injectForm(
    submit: () async {
      // final Patient patient = Patient(
      //     // mr: randomID,
      //     // arrivalAt: DateTime.now(),
      //     );
      // setPatient(patient);
    },
  );
}
