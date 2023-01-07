// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unnecessary_brace_in_string_interps

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../core.dart';

// class SubscriptionPage extends ReactiveStatelessWidget {
//   SubscriptionPage({required this.subscription});
//   String subscription;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //    drawer: MyDrawer(),
//       appBar: AppBar(
//         title: Text('Subscription'),
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           Card(
//             child: ListTile(
//               onTap: () {
//                 RM.navigate.to(BuySubscriptionsPage());
//               },
//               title: Center(child: Text('Subscription type\n${subscription}')),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               title: Text('Opening date\n${startSubscription.day}-${startSubscription.month}-${startSubscription.year}'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               title: Text('Closing date\n${endSubscription.day}-${endSubscription.month}-${endSubscription.year}'),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         heroTag: 'id12',
//         onPressed: () {
//           openDashboard(context);
//         },
//         child: Icon(Icons.arrow_back),
//       ),
//     );
//   }
// }

// class BuySubscriptionsPage extends ReactiveStatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(automaticallyImplyLeading: false, centerTitle: true, title: Text('Buy Subscriptions')),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('\nSelect subscription type\n\nCurrent Subscription: ${subscription}\n'),
//             subtitle: DropdownButtonFormField<Subscription>(
//               decoration: InputDecoration(border: OutlineInputBorder()),
//               value: subscription,
//               items: Subscription.values
//                   .map(
//                     (e) => DropdownMenuItem<Subscription>(
//                       value: e,
//                       child: Text(e.name),
//                     ),
//                   )
//                   .toList(),
//               onChanged: (value) {
//                 buySubscription(value);
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//             heroTag: 'back',
//             tooltip: 'go back',
//             onPressed: () => Navigator.pop(context),
//             child: Icon(Icons.arrow_back),
//           ),
//           // FloatingActionButton(
//           //   heroTag: 'buy',
//           //   tooltip: 'buy subscription',
//           //   onPressed: () {},
//           //   child: Icon(Icons.shop_2),
//           // ),
//         ],
//       ),
//     );
//   }
// }
