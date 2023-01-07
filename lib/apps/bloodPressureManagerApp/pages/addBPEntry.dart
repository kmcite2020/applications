// // ignore_for_file: file_names, prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../core/reactiveModels.dart';

// class AddBPEntry extends ReactiveStatelessWidget {
//   const AddBPEntry({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OnFormBuilder(
//         listenTo: addBPEntryForm,
//         builder: () => ListView(
//           children: [
//             OnFormFieldBuilder(
//               listenTo: systolicBP,
//               inputDecoration: InputDecoration(errorText: systolicBP.error),
//               builder: (_, __) => Slider(
//                 label: '$_',
//                 max: 350,
//                 min: 0,
//                 value: _,
//                 onChanged: __,
//               ),
//             ),
//             OnFormFieldBuilder(
//               listenTo: diastolicBP,
//               inputDecoration: InputDecoration(errorText: diastolicBP.error),
//               builder: (_, __) => Slider(
//                 label: '$_',
//                 max: 300,
//                 min: 0,
//                 value: _,
//                 onChanged: __,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(padding),
//               child: ElevatedButton(
//                 onPressed: addBPEntryForm.isValid ? addBPEntryForm.submit : null,
//                 child: Text(
//                   'Add BP Entry',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final addBPEntryForm = RM.injectForm(autovalidateMode: AutovalidateMode.always);

// final InjectedFormField<double> systolicBP = RM.injectFormField<double>(
//   120,
//   validators: [
//     (value) {
//       if (value <= diastolicBP.value) {
//         return 'Systolic BP should be greater than diastolic BP.';
//       }
//       return null;
//     },
//   ],
// );
// final InjectedFormField<double> diastolicBP = RM.injectFormField<double>(
//   80,
//   validators: [
//     (value) {
//       if (value >= systolicBP.value) {
//         return 'Diastolic BP should be less than diastolic BP.';
//       }
//       return null;
//     },
//   ],
// );
