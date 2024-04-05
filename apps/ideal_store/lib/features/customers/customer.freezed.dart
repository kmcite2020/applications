// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get customerID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerID, String name, String city,
            bool editing, List<String> products)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerID, String name, String city, bool editing,
            List<String> products)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerID, String name, String city, bool editing,
            List<String> products)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Customer value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Customer value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Customer value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String customerID,
      String name,
      String city,
      bool editing,
      List<String> products});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? name = null,
    Object? city = null,
    Object? editing = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID,
      String name,
      String city,
      bool editing,
      List<String> products});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? name = null,
    Object? city = null,
    Object? editing = null,
    Object? products = null,
  }) {
    return _then(_$CustomerImpl(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {required this.customerID,
      this.name = '',
      required this.city,
      this.editing = false,
      final List<String> products = const <String>[]})
      : _products = products;

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final String customerID;
  @override
  @JsonKey()
  final String name;
  @override
  final String city;
  @override
  @JsonKey()
  final bool editing;
  final List<String> _products;
  @override
  @JsonKey()
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Customer.raw(customerID: $customerID, name: $name, city: $city, editing: $editing, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerID, name, city, editing,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerID, String name, String city,
            bool editing, List<String> products)
        raw,
  }) {
    return raw(customerID, name, city, editing, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerID, String name, String city, bool editing,
            List<String> products)?
        raw,
  }) {
    return raw?.call(customerID, name, city, editing, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerID, String name, String city, bool editing,
            List<String> products)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(customerID, name, city, editing, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Customer value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Customer value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Customer value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final String customerID,
      final String name,
      required final String city,
      final bool editing,
      final List<String> products}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  String get customerID;
  @override
  String get name;
  @override
  String get city;
  @override
  bool get editing;
  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customers _$CustomersFromJson(Map<String, dynamic> json) {
  return _Customers.fromJson(json);
}

/// @nodoc
mixin _$Customers {
  Map<String, Customer> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomersCopyWith<Customers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersCopyWith<$Res> {
  factory $CustomersCopyWith(Customers value, $Res Function(Customers) then) =
      _$CustomersCopyWithImpl<$Res, Customers>;
  @useResult
  $Res call({Map<String, Customer> cache});
}

/// @nodoc
class _$CustomersCopyWithImpl<$Res, $Val extends Customers>
    implements $CustomersCopyWith<$Res> {
  _$CustomersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Customer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersImplCopyWith<$Res>
    implements $CustomersCopyWith<$Res> {
  factory _$$CustomersImplCopyWith(
          _$CustomersImpl value, $Res Function(_$CustomersImpl) then) =
      __$$CustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Customer> cache});
}

/// @nodoc
class __$$CustomersImplCopyWithImpl<$Res>
    extends _$CustomersCopyWithImpl<$Res, _$CustomersImpl>
    implements _$$CustomersImplCopyWith<$Res> {
  __$$CustomersImplCopyWithImpl(
      _$CustomersImpl _value, $Res Function(_$CustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$CustomersImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Customer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomersImpl implements _Customers {
  const _$CustomersImpl(
      {final Map<String, Customer> cache = const <String, Customer>{}})
      : _cache = cache;

  factory _$CustomersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomersImplFromJson(json);

  final Map<String, Customer> _cache;
  @override
  @JsonKey()
  Map<String, Customer> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Customers(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersImplCopyWith<_$CustomersImpl> get copyWith =>
      __$$CustomersImplCopyWithImpl<_$CustomersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomersImplToJson(
      this,
    );
  }
}

abstract class _Customers implements Customers {
  const factory _Customers({final Map<String, Customer> cache}) =
      _$CustomersImpl;

  factory _Customers.fromJson(Map<String, dynamic> json) =
      _$CustomersImpl.fromJson;

  @override
  Map<String, Customer> get cache;
  @override
  @JsonKey(ignore: true)
  _$$CustomersImplCopyWith<_$CustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
