// // ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_build_context_synchronously

// import 'package:dashboard/core/apps.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../core.dart';

// class SigninPage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Signin'),
//         centerTitle: true,
//         actions: [AppSelectorToggle()],
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(5),
//             margin: EdgeInsets.all(5),
//             child: TextFormField(
//               controller: usernameC,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(5),
//             margin: EdgeInsets.all(5),
//             child: TextFormField(
//               controller: passwordC,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Card(
//             color: isLogged ? Colors.green : Colors.red,
//             child: ListTile(title: Text(isLogged ? 'Signed' : 'Not signed')),
//           )
//         ],
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//             tooltip: 'login',
//             child: Icon(Icons.login),
//             onPressed: () => signin(context),
//           ),
//           FloatingActionButton(
//             tooltip: 'forgot password',
//             child: Icon(Icons.create_sharp),
//             onPressed: () => openSignup(context, true),
//           ),
//           FloatingActionButton(
//             tooltip: 'sign up',
//             onPressed: () => openSignup(context, false),
//             child: Icon(Icons.account_circle),
//           ),
//         ],
//       ),
//     );
//   }
// }
