// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../doctors/logic.dart';

// class TestingPage extends ReactiveStatelessWidget {
//   const TestingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'TEST PAGE',
//         ),
//         actions: [AppSelectorToggle()],
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(9),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 4,
//                   child: TextFormField(
//                     controller: managerDoctor.nameController.controller,
//                     focusNode: managerDoctor.nameController.focusNode,
//                     decoration: InputDecoration(labelText: 'Name'),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: DropdownButtonFormField<int>(
//                     value: managerDoctor.experienceController.value,
//                     items: [0, 1, 2, 3, 4, 5]
//                         .map(
//                           (int e) => DropdownMenuItem<int>(
//                             value: e,
//                             child: Text(
//                               e.toString(),
//                             ),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: managerDoctor.experienceController.onChanged,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5),
//             child: DropdownButtonFormField<DoctorType>(
//                 value: managerDoctor.doctorTypeController.value,
//                 items: DoctorType.values
//                     .map(
//                       (e) => DropdownMenuItem<DoctorType>(
//                         value: e,
//                         child: Text(
//                           e.name,
//                         ),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: managerDoctor.doctorTypeController.onChanged),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5),
//             child: DropdownButtonFormField<SpecialityType>(
//                 value: managerDoctor.specialityTypeController.value,
//                 items: SpecialityType.values
//                     .map(
//                       (e) => DropdownMenuItem<SpecialityType>(
//                         value: e,
//                         child: Text(
//                           e.name,
//                         ),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: managerDoctor.specialityTypeController.onChanged),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5),
//             child: TextField(
//               controller: managerDoctor.codeForDoctor.controller,
//               focusNode: managerDoctor.codeForDoctor.focusNode,
//               decoration: InputDecoration(labelText: 'Password'),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 managerDoctor.nameController.isValid
//                     ? ElevatedButton(
//                         onPressed: managerDoctor.addDoctor,
//                         child: Text(
//                           'ADD DOCTOR',
//                         ),
//                       )
//                     : SizedBox(),
//                 // ElevatedButton(
//                 //   onPressed: () => managerDoctor.doctorsRM.state = [],
//                 //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.amber),
//                 //   child: Text(
//                 //     'CLEAR STORE',
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           for (final eachDoctor in managerDoctor.doctors)
//             Card(
//               child: ListTile(
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       eachDoctor.name,
//                       textScaleFactor: 2,
//                     ),
//                     Text(
//                       eachDoctor.specialityType.name,
//                     ),
//                   ],
//                 ),
//                 subtitle: Column(
//                   children: [
//                     Text(
//                       eachDoctor.userID,
//                     ),
//                     Text(eachDoctor.doctorType.name),
//                     Text("${eachDoctor.experience} years experience")
//                   ],
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete_forever),
//                   onPressed: () => managerDoctor.deleteDocotor(eachDoctor),
//                 ),
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }
