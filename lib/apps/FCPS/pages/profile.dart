// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../components/widgets.dart';
// import '../core.dart';

// class ProfilePage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         //  drawer: MyDrawer(),
//         appBar: AppBar(
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//           title: Text('User Profile'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               InlineEditor(title: 'NAME', value: name),
//               InlineEditor(title: 'E-MAIL', value: email),
//               CitiesEditor(),
//               InlineEditor(title: 'Speciality:', value: speciality),
//               for (final eachSubscription in Subscription.values) Text(eachSubscription.name),
//               // ListTile(
//               //   title: Text('Current Subscription: $subscription'),
//               //   subtitle: Padding(
//               //     padding: const EdgeInsets.all(8.0),
//               //     child: Dropdown(),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//         floatingActionButton: BackButton());
//   }
// }

// class Floater extends StatefulWidget {
//   const Floater({
//     Key? key,
//     required this.onTap,
//     this.child,
//     this.tooltip,
//   }) : super(key: key);
//   final Function() onTap;
//   final Widget? child;
//   final String? tooltip;

//   @override
//   State<Floater> createState() => _FloaterState();
// }

// class _FloaterState extends State<Floater> {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: widget.onTap,
//       tooltip: widget.tooltip,
//       heroTag: Uuid().v1(),
//       child: widget.child,
//     );
//   }
// }
