// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  Brand get brand => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List get image => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  @MaterialColorConverter()
  MaterialColor get materialColor => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      String model,
      Brand brand,
      int stock,
      @Uint8ListConverter() Uint8List image,
      bool editing,
      @MaterialColorConverter() MaterialColor materialColor,
      int price});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? model = null,
    Object? brand = null,
    Object? stock = null,
    Object? image = null,
    Object? editing = null,
    Object? materialColor = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String model,
      Brand brand,
      int stock,
      @Uint8ListConverter() Uint8List image,
      bool editing,
      @MaterialColorConverter() MaterialColor materialColor,
      int price});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? model = null,
    Object? brand = null,
    Object? stock = null,
    Object? image = null,
    Object? editing = null,
    Object? materialColor = null,
    Object? price = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl(
      {this.id = '',
      this.name = '',
      this.model = '',
      this.brand = Brand.pakistani,
      this.stock = 0,
      @Uint8ListConverter() required this.image,
      this.editing = false,
      @MaterialColorConverter() this.materialColor = Colors.blue,
      this.price = 0});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String model;
  @override
  @JsonKey()
  final Brand brand;
  @override
  @JsonKey()
  final int stock;
  @override
  @Uint8ListConverter()
  final Uint8List image;
  @override
  @JsonKey()
  final bool editing;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor materialColor;
  @override
  @JsonKey()
  final int price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, name: $name, model: $model, brand: $brand, stock: $stock, image: $image, editing: $editing, materialColor: $materialColor, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('stock', stock))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('materialColor', materialColor))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      model,
      brand,
      stock,
      const DeepCollectionEquality().hash(image),
      editing,
      materialColor,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String id,
      final String name,
      final String model,
      final Brand brand,
      final int stock,
      @Uint8ListConverter() required final Uint8List image,
      final bool editing,
      @MaterialColorConverter() final MaterialColor materialColor,
      final int price}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get model;
  @override
  Brand get brand;
  @override
  int get stock;
  @override
  @Uint8ListConverter()
  Uint8List get image;
  @override
  bool get editing;
  @override
  @MaterialColorConverter()
  MaterialColor get materialColor;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
