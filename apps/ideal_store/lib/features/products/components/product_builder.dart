import 'package:ideal_store/main.dart';

class ProductBuilder extends UI {
  final String productID;
  final Widget Function(Product product) builder;
  ProductBuilder({
    required this.productID,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => builder(Product.fromID(productID));
}
