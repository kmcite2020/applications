// part of '../../../logic/logic.dart';

// final PatientsBloc patientsBloc = PatientsBloc();

// class PatientsBloc {
//   void setPatient(PatientModel patientModel) async =>
//       await patientsRepository.setPatient(patientModel);

//   void setPatientName(String value, PatientModel patientModel) {
//     setPatient(patientModel..name = value);
//   }

//   void setPatientEditing(bool value, PatientModel patientModel) {
//     setPatient(patientModel..editing = value);
//   }

//   void setPatientAddress(AddressModel value, PatientModel patient) {
//     setPatient(patient..address = value);
//   }

//   void setPatientAddressTown(String string, PatientModel patient) {
//     setPatientAddress(patient.address..town = string, patient);
//   }

//   void setPatientAddressCity(String string, PatientModel patient) {
//     setPatientAddress(patient.address..city = string, patient);
//   }

//   void setPatientAddressState(String string, PatientModel patient) {
//     setPatientAddress(patient.address..state = string, patient);
//   }

//   void setPatientAddressCountry(String string, PatientModel patient) {
//     setPatientAddress(patient.address..country = string, patient);
//   }

//   void setPatientDateOfBirth(DateTime value, PatientModel patient) {
//     setPatient(patient..dateOfBirth = value);
//   }

//   void setPatientGender(Gender value, PatientModel patient) {
//     setPatient(patient..gender = value);
//   }

//   void addPatientPicture(PictureModel value, PatientModel patient) {
//     setPatient(patient..pictures.add(value));
//   }

//   void removePatientPicture(PictureModel value, PatientModel patient) {
//     setPatient(patient..pictures.remove(value));
//   }

//   // void clearPicturesFromPatient(PatientModel patient) {
//   //   addPatientPicture({}, patient..pictures.updateSync());
//   // }

//   void setPatientContact(ContactModel value, PatientModel patient) {
//     setPatient(patient..contact = value);
//   }

//   void setPatientContactCountryCode(String value, PatientModel patient) {
//     setPatientContact(patient.contact..countryCode = value, patient);
//   }

//   void setPatientContactMnp(String value, PatientModel patient) {
//     setPatientContact(patient.contact..mnp = value, patient);
//   }

//   void setPatientContactPhoneCode(String value, PatientModel patient) {
//     setPatientContact(patient.contact..phoneCode = value, patient);
//   }

//   void setPatientPatterns(PatternsModel value, PatientModel patient) {
//     setPatient(patient..patterns = value);
//   }

//   void setPatientPatternsLocalizedOrGeneralized(
//       bool? value, PatientModel patient) {
//     setPatientPatterns(
//       patient.patterns..localizedOrGeneralized = value!,
//       patient,
//     );
//   }

//   void setPatientPatternsUnilateralOrBilateral(
//       bool? value, PatientModel patient) {
//     setPatientPatterns(
//       patient.patterns..unilateralOrBilateral = value!,
//       patient,
//     );
//   }

//   void setPatientPatternsSymmetricalOrAssymetrical(
//       bool? value, PatientModel patient) {
//     setPatientPatterns(
//       patient.patterns..symmetricalOrAssymetrical = value!,
//       patient,
//     );
//   }

//   void setPatientPatternsTruncalOrAcral(bool? value, PatientModel patient) {
//     setPatientPatterns(
//       patient.patterns..truncalOrAcral = value!,
//       patient,
//     );
//   }

//   void setPatientPatternsFlexorOrExtensor(bool? value, PatientModel patient) {
//     setPatientPatterns(
//       patient.patterns..flexorOrExtensor = value!,
//       patient,
//     );
//   }

//   void setPatientPatternsExposedOrCovered(bool? value, PatientModel patient) {
//     final patterns = patient.patterns;
//     setPatientPatterns(
//       patterns..exposedOrCovered = value!,
//       patient,
//     );
//   }

//   void deletePatient(PatientModel patientModel) async {
//     await patientsRepository.deletePatient(patientModel);
//   }

//   void clearPatients() async => await patientsRepository.clearPatients();
// }

// mixin LesionsBloc2 {
//   List<LesionSite> lesions(PatientModel patientModel) => patientModel.lesions;
//   void setPatientLesions(List<LesionSite> lesions, PatientModel patientModel) {
//     patientsBloc.setPatient(patientModel..lesions = lesions);
//   }

//   void addLesion(LesionSite lesionSite, PatientModel patientModel) {
//     setPatientLesions(lesions(patientModel)..add(lesionSite), patientModel);
//   }

//   void removeLesion(LesionSite lesionSite, PatientModel patientModel) {
//     setPatientLesions(lesions(patientModel)..remove(lesionSite), patientModel);
//   }

//   void clearLesions(PatientModel patientModel) {
//     setPatientLesions([], patientModel);
//   }
// }
