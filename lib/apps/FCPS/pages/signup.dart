// // ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_build_context_synchronously, must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../core.dart';
// import '../components/widgets.dart';

// class SignupPage extends ReactiveStatelessWidget {
//   bool isForgot;
//   SignupPage({this.isForgot = false});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: Text(isForgot ? 'Forgot Password' : 'Sign up'),
//       ),
//       body: ListView(
//         children: [
//           isForgot ? SizedBox() : InlineEditor(value: name, title: 'NAME'),
//           isForgot ? SizedBox() : InlineEditor(value: email, title: 'EMAIL'),
//           isForgot ? SizedBox() : CitiesEditor(),
//           isForgot ? SizedBox() : InlineEditor(value: speciality, title: 'SPECIALITY'),
//           InlineEditor(value: username, title: 'USER NAME'),
//           InlineEditor(value: password, title: 'PASSWORD'),
//           CardTile(
//             title: Text('Username'),
//             subtitle: Text(username),
//           ),
//           CardTile(
//             title: Text('Password'),
//             subtitle: Text(password),
//           ),
//         ],
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Icon(Icons.arrow_back)),
//           FloatingActionButton(
//               onPressed: () {
//                 isForgot ? forgotPassword(context) : signupUser(context);
//               },
//               child: Icon(Icons.save)),
//         ],
//       ),
//     );
//   }
// }
