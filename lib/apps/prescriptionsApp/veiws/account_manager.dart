// // ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, unused_import, dead_code, unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import 'dashboard.dart';

// @immutable
// class AccountManager extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AppBar(
//               title: Text("Account Manager"),
//             ),
//             Text(
//               'Will be implemented in future versions',
//               textScaleFactor: 2.4,
//             ),
//             true
//                 ? Column(
//                     children: [
//                       Text('user'),
//                       ListTile(
//                         title: Text('account'),
//                         subtitle: Text('age,office,deptt'),
//                       ),
//                     ],
//                   )
//                 : Text('logged out'),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   logout();
//                 },
//                 child: Text('logout'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// void logout() {
//   // manager.loginRM.state = false;
//   RM.navigate.toAndRemoveUntil(Login());
// }

// class Login extends ReactiveStatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 5,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('Sign In'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(),
//               ),
//               Row(
//                 children: [
//                   TextButton(onPressed: () {}, child: Text('forgot password')),
//                   TextButton(
//                     onPressed: () {
//                       // SignUp.open(context);
//                     },
//                     child: Text(
//                       'Sign Up',
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // RM.navigate.to(CreateAccount());
//                   },
//                   child: Text('CREATE NEW ACCOUNT'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ManagerAccounts {}

// class CreateAccount extends StatelessWidget {
//   final firstTime = RM.inject(() => true);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('CREATE ID - form'),
//         actions: [IconButton(onPressed: () => RM.navigate.back(), icon: Icon(Icons.close))],
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 7),
//           Card(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('CREATE YOUR USER CREDENTIALS'),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 // manager.createAccount();
//                 RM.navigate.toAndRemoveUntil(Dashboard());
//               },
//               child: Text('CREATE'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
