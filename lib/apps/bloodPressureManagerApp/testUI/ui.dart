// // ignore_for_file: prefer_const_constructors

// import 'package:dashboard/apps/hospitalApp/core/core.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../blood_pressures/model.dart';

// class TestUI extends ReactiveStatelessWidget {
//   const TestUI({super.key});

//   @override
//   build(context) => Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(120),
//           child: Wrap(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   child: Text('Add New Entry'),
//                   onPressed: () {
//                     bloodPressuresRM.state = [
//                       ...bloodPressuresRM.state,
//                       BloodPressureEntry(
//                           bloodPressure: BloodPressure(diastolicBP: 80, systolicBP: 120),
//                           patientID: 'patientID',
//                           dateTaken: DateTime.now(),
//                           bloodPressureType: BloodPressureType.dangerouslyLow)
//                     ];
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   child: Text('State Persistence'),
//                   onPressed: () {
//                     bloodPressuresRM.persistState();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: OutlinedButton(
//                     onPressed: () {
//                       bloodPressuresRM.refresh();
//                       bloodPressuresRM.deletePersistState();
//                     },
//                     child: Text('Destroy')),
//               )
//             ],
//           ),
//         ),
//         body: Column(
//           children: bloodPressuresRM.state
//               .map(
//                 (bpE) => ListTile(
//                   title: Text(bpE.patientID),
//                   subtitle: Text('${bpE.bloodPressure.systolicBP}/${bpE.bloodPressure.diastolicBP}'),
//                   trailing: DropdownButton<BloodPressureType>(
//                     value: bpE.bloodPressureType,
//                     items: BloodPressureType.values
//                         .map(
//                           (BloodPressureType bpT) => DropdownMenuItem(
//                             value: bpT,
//                             child: Text(
//                               bpT.name,
//                             ),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: (v) => bpE.copyWith(bloodPressureType: v),
//                   ),
//                 ),
//               )
//               .toList(),
//         ),
//       );
// }
