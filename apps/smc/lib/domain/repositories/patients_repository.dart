// import 'package:isar/isar.dart';
// import '../../main.dart';

// import '../models/models.dart';

// final patientsRepository = PatientsRepository();

// class PatientsRepository {
//   Stream<List<Patient>> get patients =>
//       isar.patients.where().watch(fireImmediately: true);
//   void setPatient(Patient patient) {
//     return isar.writeTxnSync(
//       () {
//         isar.patients.putSync(patient);
//       },
//     );
//   }

//   void deletePatient(Patient patient) {
//     return isar.writeTxnSync(
//       () {
//         isar.patients.deleteSync(patient.id);
//       },
//     );
//   }
// }
