part of '../presentation.dart';

final patientsBloc = PatientsBloc();

class PatientsBloc {
  final patientsPageViewModeRM = RM.inject(() => PatientsPageViewMode.list);
  final _patentsRM = RM.inject(
    () => <Patient>[],
    persist: () => PersistState(
      key: 'patients',
      fromJson: Patient.fromListJson,
      toJson: Patient.toListJson,
    ),
  );

  List<Patient> get patients => _patentsRM.state;

  PatientsPageViewMode get patientsPageViewMode => patientsPageViewModeRM.state;
  void setPatientsPageViewMode(PatientsPageViewMode value) =>
      patientsPageViewModeRM.state = value;

  void togglePageView() {
    setPatientsPageViewMode(
      patientsPageViewMode == PatientsPageViewMode.fullscreen
          ? PatientsPageViewMode.list
          : PatientsPageViewMode.fullscreen,
    );
  }

  void addPatient(Patient patient) {
    _patentsRM.state = List.from(patients..add(patient));
  }

  void removePatient(Patient patient) {
    _patentsRM.state = List.from(patients..remove(patient));
  }

  void removeAllPatients() {
    _patentsRM.state = [];
  }

  void setPatient(Patient? value) {
    if (value != null)
      addPatient(value);
    else
      return;
  }

  // List<Investigation>? getInvestigationsForPatient(int id) {
  //   return patientsRepository.id(id)?.investigations.toList();
  // }

  // void setInvestigationsForPatient(int id, List<Investigation> investigations) {
  //   setPatient(
  //     patientsRepository.id(id)?..investigations = investigations,
  //   );
  // }

  // void addInvestigationForPatient(int id, Investigation investigation) {
  //   setInvestigationsForPatient(
  //     id,
  //     [
  //       ...?patientsRepository.id(id)?.investigations,
  //       investigation,
  //     ],
  //   );
  // }

  // void removeInvestigationForPatient(int id, Investigation investigation) {
  //   setInvestigationsForPatient(
  //     id,
  //     [
  //       for (final eachInvestigation
  //           in patientsRepository.id(id)?.investigations ?? [])
  //         if (eachInvestigation != investigation) eachInvestigation
  //     ],
  //   );
  // }

  // void setNameForPatient(int id, String name) {
  //   setPatient(
  //     patientsRepository.id(id)?..bioData.names.patientFullName = name,
  //   );
  // }

  // void setAgeForPatient(int id, int ageInYears) {
  //   setPatient(
  //     patientsRepository.id(id)?..age.years = ageInYears,
  //   );
  // }
}
