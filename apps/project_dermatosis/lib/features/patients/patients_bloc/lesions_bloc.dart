
// class LesionsBloc {
//   void setPatient(PatientModel patient) {
//     patientsRepository.setPatient(patient);
//     print(patient.lesions);
//   }

//   void addLesionToPatient(LesionSite lesionSite, PatientModel patient) {
//     final lesions = patient.lesions;
//     patient..lesions = [...lesions, lesionSite];
//     setPatient(patient);
//   }

//   void removeLesionFromPatient(LesionSite lesionSite, PatientModel patient) {
//     var lesions = patient.lesions;
//     var updated = lesions..remove(lesionSite);
//     patient..lesions = updated;
//     setPatient(patient);
//   }
// }
