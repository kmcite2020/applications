// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, avoid_print, avoid_unnecessary_containers

// import "package:flutter/material.dart";
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import "package:intl/intl.dart";
// import '../../settings/settings.dart';
// import '../../utils.dart';
// import '../../settings/authentication.dart';

// class RegisterForm extends HookConsumerWidget {
//   RegisterForm({key}) : super(key: key);
//   final formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context, ref) {
//     final Size size = MediaQuery.of(context).size;
//     final settingsModel = ref.watch(settingsProvider);
//     final settingsNotifier = ref.watch(settingsProvider.notifier);
//     final obscure = useState(true);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register - enter your details"),
//       ),
//       body: Stack(
//         children: [
//           BackgroundWidget(size),
//           SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Padding(
//               padding: EdgeInsets.all(settingsModel.padding),
//               child: Form(
//                 autovalidateMode: AutovalidateMode.always,
//                 key: formKey,
//                 child: Card(
//                   child: Padding(
//                     padding: EdgeInsets.all(settingsModel.padding),
//                     child: Column(
//                       // shrinkWrap: true,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(settingsModel.padding),
//                           child: TextFormField(
//                             controller: nameFF.controller,
//                             focusNode: nameFF.focusNode,
//                             decoration: InputDecoration(
//                               labelText: "Type name",
//                               errorText: nameFF.error,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(settingsModel.padding),
//                           child: TextFormField(
//                             controller: emailRegisterForm.controller,
//                             focusNode: emailRegisterForm.focusNode,
//                             decoration: InputDecoration(
//                               labelText: "Type email",
//                               errorText: emailRegisterForm.error,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(settingsModel.padding),
//                           child: TextFormField(
//                             controller: passwordRegisterForm.controller,
//                             focusNode: passwordRegisterForm.focusNode,
//                             decoration: InputDecoration(
//                               labelText: "Type password",
//                               suffixIcon: Padding(
//                                 padding: EdgeInsets.all(settingsModel.padding),
//                                 child: IconButton(
//                                   onPressed: () => obscure.value = !obscure.value,
//                                   icon: Icon(obscure.value ? Icons.visibility : Icons.visibility_off),
//                                 ),
//                               ),
//                               errorText: passwordRegisterForm.error,
//                             ),
//                             obscureText: obscure.value,
//                           ),
//                         ),
//                         FormField<DateTime>(
//                           // listenTo: dateOfBirthFF,
//                           builder: (state) {
//                             return Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: TextButton(
//                                 onPressed: () async {
//                                   var cache = dateOfBirthFF.value;
//                                   var temp = await showDatePicker(
//                                     context: context,
//                                     initialDate: DateTime.now(),
//                                     firstDate: DateTime(1950),
//                                     lastDate: DateTime.now(),
//                                   );
//                                   if (temp != null) {
//                                     dateOfBirthFF.value = temp;
//                                   } else {
//                                     dateOfBirthFF.value = cache;
//                                   }
//                                 },
//                                 child: Text(DateFormat("d-M-y").format(state.value!)),
//                               ),
//                             );
//                           },
//                         ),
//                         FormField<DateTime>(
//                           // listenTo: dateOfPubertyFF,
//                           builder: (state) {
//                             return Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: TextButton(
//                                 onPressed: () async {
//                                   var cache = dateOfPubertyFF.value;
//                                   var temp = await showDatePicker(
//                                     context: context,
//                                     initialDate: DateTime.now(),
//                                     firstDate: DateTime(1950),
//                                     lastDate: DateTime.now(),
//                                   );
//                                   if (temp != null) {
//                                     dateOfPubertyFF.value = temp;
//                                   } else {
//                                     dateOfPubertyFF.value = cache;
//                                   }
//                                 },
//                                 child: Text(DateFormat("d-M-y").format(state.value!)),
//                               ),
//                             );
//                           },
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(settingsModel.padding),
//                           child: ListTile(
//                             title: Text("Your age is"),
//                             subtitle: Text(
//                               "${DateTime.now().difference(dateOfBirthFF.value).inDays ~/ 365} years",
//                               textScaleFactor: 1.7,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(settingsModel.padding),
//                           child: ElevatedButton.icon(
//                             onPressed: registerForm.isValid ? registerForm.submit : null,
//                             icon: Icon(Icons.people),
//                             label: Text("Register"),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
