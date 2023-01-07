// // ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../controllers/features/product.dart';
// import 'show_image.dart';

// class ProductDetails extends ReactiveStatelessWidget {
//   final id;
//   const ProductDetails(this.id, {Key? key}) : super(key: key);
//   static const label = 'Product Details';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(label),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: IconButton(
//               tooltip: 'sell this item',
//               onPressed: () {},
//               icon: Icon(Icons.cabin),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           for (final prod in products)
//             if (prod.id == id)
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             prod.id.toString(),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("NAME: ${prod.name}"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("MODEL: ${prod.model}"),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Widget child = ClipRRect(
//                                     borderRadius: BorderRadius.circular(20),
//                                     child: Image.memory(prod.image as dynamic),
//                                   );
//                                   RM.navigate.to(ShowImage(child));
//                                 },
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(20),
//                                   child: Image.memory(prod.image as dynamic
//                                       // width: 250,
//                                       // height: 250,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 Directory.current.path.toString(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           // child: Text("COLOR: ${prod.color}"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("BRAND: ${prod.brand}"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("PRICE: ${prod.price.toInt()}"),
//                         ),
//                         Wrap(
//                           children: [
//                             InkWell(
//                               onTap: () {
//                                 changeStock(20, prod.id.toString());
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text("LOSE 20 STOCKS"),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 changeStock(20, prod.id.toString());
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text("ADD 20 STOCKS"),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 changePrice(20, prod.id.toString());
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text("STOCKS ${prod.stock.toInt()}"),
//                               ),
//                             ),
//                           ],
//                         ),
//                         InkWell(
//                           onTap: () {
//                             deleteProduct(prod.id.toString());
//                             RM.navigate.to(ShowImage(Image.memory(prod.image as dynamic)));
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text('DELETE PRODUCT'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//         ],
//       ),
//     );
//   }
// }
