// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, await_only_futures, unused_import, unused_local_variable

// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// final medicinesRM = RM.inject<Map>(
//   () => {},
//   persist: () => PersistState(
//     debugPrintOperations: true,
//     key: '__MEDICINES__',
//     toJson: (Map s) => jsonEncode(s),
//     fromJson: (s) => jsonDecode(s),
//   ),
// );

// class MedicineManager {
//   /// reactive models
//   final editMedicineRM = RM.inject(() => false);
//   final medicineRM = RM.injectTextEditing(autoDispose: false);

//   /// getters
//   bool get editMedicine => editMedicineRM.state;
//   Map get medicines => medicinesRM.state;
//   String get medicine => medicineRM.value;

//   /// functions
//   void addMedicineToList() => medicinesRM.state[medicineRM.value] = medicineRM.value;
//   void removeMedicineFromList(String medicine) => medicinesRM.state = medicinesRM.state.remove(medicine);
// }

// final medicineManagerRM = RM.inject(() => MedicineManager());
// MedicineManager get medicineManager => medicineManagerRM.state;

// class Medicines extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Add Medicines'), actions: [
//         Switch(value: medicineManager.editMedicine, onChanged: (value) => medicineManager.editMedicineRM.state = value),
//         IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () => RM.navigate.back(),
//         ),
//       ]),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             medicineManager.editMedicine
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       controller: medicineManager.medicineRM.controller,
//                       focusNode: medicineManager.medicineRM.focusNode,
//                       decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           onPressed: medicineManager.addMedicineToList,
//                           icon: Icon(Icons.add),
//                         ),
//                       ),
//                     ),
//                   )
//                 : SizedBox(),
//             for (final medicine in medicinesRM.state.values)
//               Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Card(
//                   child: ListTile(
//                     title: Text(medicine),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () => medicineManager.removeMedicineFromList(medicine),
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
