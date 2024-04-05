// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productID: json['productID'] as String,
      name: json['name'] as String? ?? '',
      model: json['model'] as String? ?? '',
      brand:
          $enumDecodeNullable(_$BrandEnumMap, json['brand']) ?? Brand.pakistani,
      stock: json['stock'] as int? ?? 0,
      image: const Uint8ListConvertor().fromJson(json['image'] as String),
      editing: json['editing'] as bool? ?? false,
      materialColor: json['materialColor'] == null
          ? Colors.blue
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      price: json['price'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'productID': instance.productID,
      'name': instance.name,
      'model': instance.model,
      'brand': _$BrandEnumMap[instance.brand]!,
      'stock': instance.stock,
      'image': const Uint8ListConvertor().toJson(instance.image),
      'editing': instance.editing,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'price': instance.price,
    };

const _$BrandEnumMap = {
  Brand.urideal: 'urideal',
  Brand.chinese: 'chinese',
  Brand.pakistani: 'pakistani',
};

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Product.fromJson(e)),
          ) ??
          const <String, Product>{},
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
