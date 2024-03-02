// import 'package:isar/isar.dart';
// import '../models/models.dart';
// import '../../main.dart';

// final adminRepository = AdminRepository();

// class AdminRepository {
//   Stream<List<Staff>> get staffs {
//     return isar.staffs.where().watch(
//           fireImmediately: true,
//         );
//   }

//   Stream<List<Staff>> get doctors {
//     return isar.staffs
//         .filter()
//         .staffTypeEqualTo(
//           StaffType.PHYSICIAN,
//         )
//         .watch(
//           fireImmediately: true,
//         );
//   }

//   void registerStaff(Staff staff) => isar.writeTxnSync(
//         () => isar.staffs.putSync(staff),
//       );
// }
