// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

// import 'dart:convert';
// import 'dart:io';

// import 'package:equatable/equatable.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../../../../core/reactiveModels.dart';
// import '../core.dart';

// enum Brand {
//   urideal('URideal'),
//   chinese('Chinese'),
//   pakistani('Pakistani');

//   const Brand(this.description);
//   final description;
// }

// class ProductModel extends Equatable {
//   final String id;
//   final String name;
//   final String model;
//   final Brand brand;
//   final MaterialColor color;
//   final double price;
//   final int stock;
//   final Uint8List image;

//   const ProductModel({
//     required this.id,
//     required this.name,
//     required this.model,
//     required this.brand,
//     required this.color,
//     required this.price,
//     required this.stock,
//     required this.image,
//   });
//   @override
//   toString() => '$name,$model,$price,$stock,$image';
//   ProductModel copyWith({
//     String? id,
//     String? name,
//     String? model,
//     Brand? brand,
//     MaterialColor? color,
//     double? price,
//     int? stock,
//     Uint8List? image,
//   }) {
//     return ProductModel(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       model: model ?? this.model,
//       brand: brand ?? this.brand,
//       color: color ?? this.color,
//       price: price ?? this.price,
//       stock: stock ?? this.stock,
//       image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'model': model,
//       'brand': brand.index,
//       'color': colors.indexOf(color),
//       'price': price,
//       'stock': stock,
//       'image': base64Encode(image),
//     };
//   }

//   factory ProductModel.fromMap(Map<String, dynamic> map) {
//     return ProductModel(
//       id: map['id'] as String,
//       name: map['name'] as String,
//       model: map['model'] as String,
//       brand: Brand.values[map['brand'] as int],
//       color: colors[map['color'] as int],
//       price: map['price'] as double,
//       stock: map['stock'] as int,
//       image: base64Decode(map['image']),
//     );
//   }

//   factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   String toJson() => json.encode(toMap());
//   static List<ProductModel> fromListJson(String source) {
//     final List result = json.decode(source);
//     return result.map((e) => ProductModel.fromJson(e)).toList();
//   }

//   static String toListJson(List<ProductModel> products) {
//     final List result = products.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }

//   static get emptyListInfo =>
//       'Currently there are no products available in the list. Kindly try adding some products using the corner button.';

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props {
//     return [id, name, model, brand, color, price, stock, image];
//   }
// }

// final productsRM = RM.inject<List<ProductModel>>(
//   () => [],
//   persist: () => PersistState(
//     throttleDelay: 200,
//     key: 'products',
//     fromJson: (source) => ProductModel.fromListJson(source),
//     toJson: (state) => ProductModel.toListJson(state),
//   ),
// );
// List<ProductModel> get products => productsRM.state;
// set products(value) => productsRM.state = value;
// void deleteProduct(String id) {
//   productsRM.state = [
//     for (final product in productsRM.state)
//       if (product.id != id) product
//   ];
// }

// Future<void> addProduct() async {
//   String id = Uuid().v1();
//   products = [
//     ...products,
//     ProductModel(
//       id: id,
//       name: nameOfProduct.value,
//       model: modelOfProduct.value,
//       brand: brandOfProduct.value,
//       color: colorOfProduct.value,
//       price: priceOfProduct.value,
//       stock: stockOfProduct.value,
//       image: imageOfProduct.value,
//     )
//   ];
// }

// final addProductForm = RM.injectForm(submit: addProduct, autovalidateMode: AutovalidateMode.always);

// final nameOfProduct = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (text!.length < 6) {
//         return 'should contain at least 6 characters';
//       }
//       return null;
//     }
//   ],
// );
// final modelOfProduct = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (text!.length < 6) {
//         return 'should contain at least 6 characters';
//       }
//       return null;
//     }
//   ],
// );
// final colorOfProduct = RM.injectFormField<MaterialColor>(colors.first);
// final brandOfProduct = RM.injectFormField<Brand>(Brand.values.first);
// final priceOfProduct = RM.injectFormField<double>(
//   0,
//   validators: [
//     (value) {
//       if (value == 0.0) return 'should have a price';
//       return null;
//     }
//   ],
// );
// final stockOfProduct = RM.injectFormField<int>(
//   0,
//   validators: [
//     (value) {
//       if (value < 1) return 'should have at least 1 item in stock';
//       return null;
//     }
//   ],
// );
// final InjectedFormField<Uint8List> imageOfProduct = RM.injectFormField(
//   defaultImage,
//   validators: [
//     (image) {
//       if (image == defaultImage) {
//         return 'please add an image';
//       }
//       return null;
//     }
//   ],
// );

// Future<void> picker() async {
//   FilePickerResult? files = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: [
//       'jpg',
//       'png',
//     ],
//   );
//   if (files != null) {
//     imageOfProduct.value = File(files.files.first.path!).readAsBytesSync();
//   }
// }

// changePrice(double price, String id) {
//   for (final product in products) {
//     if (product.id == id) {
//       product.copyWith(price: price);
//     }
//   }
// }

// changeStock(int stock, String id) {
//   for (final product in products) {
//     if (product.id == id) {
//       product.copyWith(stock: stock);
//     }
//   }
// }

// final currentWorthRM = RM.inject(
//   () {
//     late String worth;
//     double temp = 0;
//     for (ProductModel productModel in products) {
//       temp = temp + productModel.stock * productModel.price;
//     }
//     if (temp <= 1000) {
//       worth = (temp / 1000).round().toString();
//     } else if (temp > 1000 && temp <= 1000000) {
//       worth = "${(temp / 1000).toStringAsExponential(3).substring(0, 5)}K";
//     } else if (temp > 1000000 && temp <= 1000000000) {
//       worth = "${(temp / 1000000).toStringAsExponential(3).substring(0, 5)}M";
//     } else if (temp > 1000000000) {
//       worth = "${(temp / 1000000000).toStringAsExponential(3).substring(0, 5)}B";
//     }
//     return worth;
//   },
//   dependsOn: DependsOn({productsRM}),
// );
// String get currentWorth => currentWorthRM.state;
