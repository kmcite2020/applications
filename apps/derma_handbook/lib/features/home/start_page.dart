// part of '../ui.dart';

// class InitializePage extends ReactiveStatelessWidget {
//   const InitializePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           const Center(
//             child: Icon(Icons.medication, size: 250),
//           ),
//           Column(
//             children: [
//               const Spacer(),
//               Center(
//                 child: ElevatedButton(
//                   child: 'GET STARTED'.text(),
//                   onPressed: () {
//                     // RM.navigate.toReplacement(const HomePage());
//                   },
//                 ).pad().pad().pad(),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PasswordEvaluatorRow extends ReactiveStatelessWidget {
//   const PasswordEvaluatorRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Icon(
//             Icons.key,
//             color: configurationBloc.state.materialColor,
//             size: 50,
//           ),
//         ),
//         Expanded(
//           flex: 4,
//           child: TextField(
//             // controller: initBloc.passwordController.controller,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: configurationBloc.state.materialColor,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(
//                   configurationBloc.state.borderRadius,
//                 ),
//               ),
//               // suffixIcon: initBloc.authenticate
//               //     ? IconButton(
//               //         onPressed: SettingsBloc.to.state.isFirstStart ? initBloc.login : null,
//               //         icon: const Icon(
//               //           Icons.done,
//               //           color: Colors.green,
//               //         ).toBordered(1),
//               //       ).toPad
//               //     : const SizedBox(),
//             ),
//           ).pad(),
//         ),
//       ],
//     );
//   }
// }

// class InitBloc {
//   // bool get authenticate {
//   // return passwordController.value == "settingsBloc.password";
//   // }

//   void login() {
//     // if (authenticate) {
//     //   // RM.navigate.toReplacement(const HomePage());
//     // } else {
//     //   // RM.navigate.toReplacement(const InitializePage());
//     // }
//   }

//   // final passwordController = RM.injectTextEditing(
//   //   text: "settingsBloc.password",
//   //   autoDispose: false,
//   // );
// }

// final InitBloc initBloc = InitBloc();
