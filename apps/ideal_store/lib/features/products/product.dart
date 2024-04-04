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
    required final String image,
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
  const Products._();
  List<Product> get products => cache.values.toList();
  void clearAll() => productsRM(Products());
  void setProduct(Product product) => productsRM(
        productsRM().copyWith(
          cache: Map.of(productsRM().cache)..[product.productID] = product,
        ),
      );
  void deleteProduct(String productID) => productsRM(
        productsRM().copyWith(
          cache: Map.of(productsRM().cache)..remove(productID),
        ),
      );

  factory Products.fromJson(json) => _$ProductsFromJson(json);
}

final productsRM = RM.persistent(
  () => Products(),
  key: 'products',
  fromJson: Products.fromJson,
);


// Product
// id
// price
// stock
// rating
// description
// details
// brand
// updates to price & when
// reviews
// add to cart
