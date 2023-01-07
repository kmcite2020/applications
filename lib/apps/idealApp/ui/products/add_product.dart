// // ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables

// import 'package:colornames/colornames.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../../core/reactiveModels.dart';
// import '../../controllers/core.dart';
// import '../../controllers/features/product.dart';

// class AddProduct extends ReactiveStatelessWidget {
//   const AddProduct({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return OnFormBuilder(
//       listenTo: addProductForm,
//       builder: () {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("SAVE PRODUCT"),
//             actions: [
//               addProductForm.isValid
//                   ? Padding(
//                       padding: EdgeInsets.all(padding),
//                       child: IconButton(
//                         onPressed: () {
//                           addProductForm.submit();
//                           RM.navigate.back();
//                         },
//                         icon: Icon(
//                           Icons.save,
//                         ),
//                       ),
//                     )
//                   : SizedBox()
//             ],
//           ),
//           body: ListView(
//             shrinkWrap: true,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder(
//                   listenTo: imageOfProduct,
//                   builder: (value, __) {
//                     return Card(
//                       child: InkWell(
//                         borderRadius: BorderRadius.circular(borderRadius),
//                         onTap: () async => await picker(),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(borderRadius),
//                           child: SizedBox(
//                             height: 250,
//                             child: value == defaultImage
//                                 ? Image.memory(
//                                     defaultImage,
//                                     fit: BoxFit.fill,
//                                   )
//                                 : Image.memory(
//                                     value,
//                                     fit: BoxFit.fill,
//                                   ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: nameOfProduct.controller,
//                   focusNode: nameOfProduct.focusNode,
//                   decoration: InputDecoration(
//                     errorText: nameOfProduct.error,
//                     labelText: 'NAME',
//                     hintText: 'Enter name here.',
//                     suffixIcon: nameOfProduct.hasError
//                         ? Icon(Icons.error, color: Theme.of(context).errorColor)
//                         : Icon(Icons.check, color: Theme.of(context).primaryColor),
//                   ),
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.next,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: TextField(
//                   controller: modelOfProduct.controller,
//                   focusNode: modelOfProduct.focusNode,
//                   decoration: InputDecoration(
//                     errorText: modelOfProduct.error,
//                     labelText: 'MODEL',
//                     hintText: 'Enter model here.',
//                     suffixIcon: nameOfProduct.hasError
//                         ? Icon(Icons.error, color: Theme.of(context).errorColor)
//                         : Icon(Icons.check, color: Theme.of(context).primaryColor),
//                   ),
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.next,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButtonFormField(
//                     value: brandOfProduct.value,
//                     items: Brand.values
//                         .map(
//                           (eachBrand) => DropdownMenuItem(
//                             value: eachBrand,
//                             child: Text(eachBrand.description),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: brandOfProduct.onChanged,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButtonFormField(
//                     value: colorOfProduct.value,
//                     items: colors
//                         .map(
//                           (eachColor) => DropdownMenuItem(
//                             value: eachColor,
//                             child: Text(eachColor.colorName),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: colorOfProduct.onChanged,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder(
//                   listenTo: priceOfProduct,
//                   builder: (_, __) => Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("PRICE MANAGER"),
//                             Text(
//                               '${priceOfProduct.value.toInt()}',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Slider(
//                         label: priceOfProduct.value.toInt().toString(),
//                         divisions: 12000,
//                         min: 0,
//                         max: 12000,
//                         value: priceOfProduct.value,
//                         onChanged: priceOfProduct.onChanged,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(padding),
//                 child: OnFormFieldBuilder(
//                   listenTo: stockOfProduct,
//                   builder: (value, __) => Column(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(padding),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('STOCK MANAGER'),
//                             Text(
//                               '${value.toInt()}',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Slider(
//                         label: value.toString(),
//                         divisions: 500,
//                         min: 0,
//                         max: 500,
//                         value: value.toDouble(),
//                         onChanged: (_) => stockOfProduct.value = _.floor(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
