import 'package:ideal_store/main.dart';

String get currentWorth {
  late String worth;
  double temp = productsRM().cache.values.fold(
      0.0,
      (previousValue, element) =>
          previousValue + (element.stock * element.price));

  if (temp <= 1000) {
    worth = (temp / 1000).round().toString();
  } else if (temp > 1000 && temp <= 1000000) {
    worth = "${(temp / 1000).toStringAsExponential(3).substring(0, 5)} K";
  } else if (temp > 1000000 && temp <= 1000000000) {
    worth = "${(temp / 1000000).toStringAsExponential(3).substring(0, 5)} M";
  } else if (temp > 1000000000) {
    worth = "${(temp / 1000000000).toStringAsExponential(3).substring(0, 5)} B";
  }
  return worth;
}

// late final addProductForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     // final product = ProductModel(
//     //   name: nameOfProduct.value,
//     //   model: modelOfProduct.value,
//     //   brand: brandOfProduct.value,
//     //   materialColor: colorOfProduct.value,
//     //   price: priceOfProduct.value,
//     //   stock: stockOfProduct.value,
//     //   image: imageOfProduct.value,
//     // );
//     // productsController.addProduct(product);
//   },
// );
// final imageOfProduct = RM.injectFormField<String>(
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
