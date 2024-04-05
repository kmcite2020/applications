import 'package:ideal_store/features/shared/utils.dart';

import '../../main.dart';
part 'product.freezed.dart';
part 'product.g.dart';

enum Brand {
  urideal('URideal'),
  chinese('Chinese'),
  pakistani('Pakistani');

  const Brand(this.description);
  final String description;
}

@freezed
class Product with _$Product {
  const factory Product.raw({
    required final String productID,
    @Default('') final String name,
    @Default('') final String model,
    @Default(Brand.pakistani) final Brand brand,
    @Default(0) final int stock,
    @Uint8ListConvertor() required final Uint8List image,
    @Default(false) final bool editing,
    @Default(Colors.blue)
    @MaterialColorConverter()
    final MaterialColor materialColor,
    @Default(0) final int price,
  }) = _Product;
  factory Product() {
    return Product.raw(
      productID: randomID,
      image: imageRM.state,
    );
  }
  factory Product.fromID(productID) =>
      productsRM().cache[productID] ?? Product().copyWith(productID: '');
  factory Product.fromJson(json) => _$ProductFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @Default(<String, Product>{}) final Map<String, Product> cache,
  }) = _Products;
  factory Products.fromJson(json) => _$ProductsFromJson(json);
}

final productsRM = ProductsRM();

class ProductsRM extends Manager<Products> {
  final initialState = Products();
  Product? getByID(String id) => state.cache[id];
  void saveProduct(Product product) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[product.productID] = product,
    );
  }

  void deleteProduct(String product) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(product),
    );
  }

  void deleteAllProducts(Product product) => state = initialState;
}
