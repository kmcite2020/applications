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
  const factory Product({
    @Default('') final String id,
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
}

final productsRM = ComplexTable(
  'products',
  fromJson: Product.fromJson,
);
