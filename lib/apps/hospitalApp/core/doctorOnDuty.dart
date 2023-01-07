// // ignore_for_file: file_names
// import 'package:states_rebuilder/states_rebuilder.dart';

// final admissionsCapacityRM = RM.inject<int>(
//   () => 10,
//   persist: () => PersistState(
//     key: 'admissionCapacity007',
//   ),
// );
// int get admissionsCapacity => admissionsCapacityRM.state;
// set admissionsCapacity(value) => admissionsCapacityRM.state = value;

// final doctorRM = RM.inject<String>(
//   () => "",
//   persist: () => PersistState(
//     key: 'doctor',
//   ),
// );
// String get doctor => doctorRM.state;
// set doctor(value) => doctorRM.state = value;
// final wardRM = RM.inject<String>(
//   () => "",
//   persist: () => PersistState(
//     key: 'ward-deptt',
//   ),
// );
// String get ward => wardRM.state;
// set ward(value) => wardRM.state = value;
// final hospitalRM = RM.inject<String>(
//   () => "",
//   persist: () => PersistState(
//     key: 'hospital',
//   ),
// );
// String get hospital => hospitalRM.state;
// set hospital(value) => hospitalRM.state = value;
