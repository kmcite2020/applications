// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

import 'settings/user_information.dart';
import 'core.dart';

// class Initialize extends ReactiveStatelessWidget {
//   Initialize({
//     super.key,
//   });
//   static open(context) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Initialize()));
//   }

//   // final isLicenseAccepted = RM.injectFormField<bool>(
//   //   false,
//   //   validators: [
//   //     (value) {
//   //       if (!value) {
//   //         return 'You must accept license agreement';
//   //       }
//   //       return null;
//   //     }
//   //   ],
//   // );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Run - Startup'),
//       ),
//       body: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListView(
//             children: [
//               Text('NAME'),
//               InlineEditor(
//                 data: username.state,
//                 persistKey: 'username',
//                 persistState: 'usernameState',
//               ),
//               Divider(),
//               Text('DATE OF BIRTH - date of your coming to creation'),
//               DateManger(
//                 name: 'birth',
//                 store: 'settings',
//                 persistKey: 'birth',
//                 date: birth,
//               ),
//               Divider(),
//               Text('DATE OF PUBERTY - became adult on'),
//               DateManger(
//                 name: 'puberty',
//                 date: puberty,
//                 persistKey: 'puberty',
//               ),
//               Divider(),
//               Text(
//                 'ALL MISSING PRAYERS - will implement',
//                 softWrap: true,
//               ),
//               SizedBox(
//                 height: 2,
//               ),
//               OnFormFieldBuilder<bool>(
//                 listenTo: isLicenseAccepted,
//                 inputDecoration: InputDecoration(
//                   errorText: isLicenseAccepted.error,
//                 ),
//                 builder: (value, onChanged) {
//                   return ListTile(
//                       leading: CircleAvatar(child: Checkbox(onChanged: onChanged, value: value)),
//                       title: const Text('I accept the license agreement'));
//                 },
//               ),
//               isLicenseAccepted.value
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           if (isLicenseAccepted.value) {
//                             isInitialized = true;
//                             // Home.open(context);
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text(
//                                   'Please accept license terms.',
//                                 ),
//                                 duration: Duration(seconds: 1),
//                               ),
//                             );
//                           }
//                         },
//                         child: Text('Get Started'),
//                       ),
//                     )
//                   : SizedBox()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
