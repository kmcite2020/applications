import 'package:ideal_store/main.dart';

class ProductBuilder extends UI {
  final String id;
  final Widget Function(Product product) builder;
  ProductBuilder({
    required this.id,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final product = productsRM.tryGet(id);
    if (product == null) {
      return CircularProgressIndicator().center();
    }
    return builder(product);
  }
}
