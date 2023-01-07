// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unused_import, unused_local_variable, dead_code, no_leading_underscores_for_local_identifiers

// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../utils.dart';
// import '../controllers/features/customer.dart';
// import '../controllers/features/product.dart';
// import 'customers.dart';
// import 'orders.dart';
// import 'products/products.dart';
// import 'settings.dart';
// import '../../timerApp/timerApp.dart';

// class Dashboard extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, ref) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           AppSelectorToggle(),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: IconButton(
//               tooltip: 'Go to Settings Page',
//               onPressed: () {
//                 // RM.navigate.to(Settings());
//               },
//               icon: Icon(
//                 Icons.settings,
//               ),
//             ),
//           )
//         ],
//         title: Text('Dashboard'),
//       ),
//       body: SafeArea(
//         child: ListView(
//           shrinkWrap: true,
//           physics: BouncingScrollPhysics(),
//           children: [
//             Card(
//               child: ListTile(
//                 title: Text('PRODUCTS'),
//                 trailing: IconButton(
//                     onPressed: () {
//                       // RM.navigate.to(Products());
//                     },
//                     icon: Icon(Icons.production_quantity_limits)),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text(CustomerModel.label),
//                 trailing: IconButton(
//                     onPressed: () {
//                       // RM.navigate.to(Customers());
//                     },
//                     icon: CustomerModel.icon),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text(Orders.label),
//                 trailing: IconButton(
//                     onPressed: () {
//                       // RM.navigate.to(Orders());
//                     },
//                     icon: Orders.icon),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text(
//                   'TOTAL PRODUCTS AVAILABLE',
//                 ),
//                 trailing: Text(products.length.toString()),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text(
//                   'TOTAL CUSTOMERS AVAILABLE',
//                 ),
//                 trailing: Text(customers.state.length.toString()),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text(
//                   'TOTAL PRODUCTS SOLD',
//                 ),
//                 trailing: Text('20'),
//                 subtitle: Text('PRODUCTS SOLD ALOT'),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 trailing: Text('25'),
//                 title: Text(
//                   'TOTAL CUSTOMERS SERVED',
//                 ),
//                 subtitle: Text('NO CUSTOMER SATISFIED'),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('Current Worth'),
//                 subtitle: Text(
//                   currentWorth,
//                   textScaleFactor: 2.5,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
