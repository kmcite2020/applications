// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Batteries _$BatteriesFromJson(Map<String, dynamic> json) {
  return _Batteries.fromJson(json);
}

/// @nodoc
mixin _$Batteries {
  Map<String, Battery> get cache => throw _privateConstructorUsedError;
  Battery? get removedBattery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteriesCopyWith<Batteries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteriesCopyWith<$Res> {
  factory $BatteriesCopyWith(Batteries value, $Res Function(Batteries) then) =
      _$BatteriesCopyWithImpl<$Res, Batteries>;
  @useResult
  $Res call({Map<String, Battery> cache, Battery? removedBattery});

  $BatteryCopyWith<$Res>? get removedBattery;
}

/// @nodoc
class _$BatteriesCopyWithImpl<$Res, $Val extends Batteries>
    implements $BatteriesCopyWith<$Res> {
  _$BatteriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? removedBattery = freezed,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Battery>,
      removedBattery: freezed == removedBattery
          ? _value.removedBattery
          : removedBattery // ignore: cast_nullable_to_non_nullable
              as Battery?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res>? get removedBattery {
    if (_value.removedBattery == null) {
      return null;
    }

    return $BatteryCopyWith<$Res>(_value.removedBattery!, (value) {
      return _then(_value.copyWith(removedBattery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BatteriesImplCopyWith<$Res>
    implements $BatteriesCopyWith<$Res> {
  factory _$$BatteriesImplCopyWith(
          _$BatteriesImpl value, $Res Function(_$BatteriesImpl) then) =
      __$$BatteriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Battery> cache, Battery? removedBattery});

  @override
  $BatteryCopyWith<$Res>? get removedBattery;
}

/// @nodoc
class __$$BatteriesImplCopyWithImpl<$Res>
    extends _$BatteriesCopyWithImpl<$Res, _$BatteriesImpl>
    implements _$$BatteriesImplCopyWith<$Res> {
  __$$BatteriesImplCopyWithImpl(
      _$BatteriesImpl _value, $Res Function(_$BatteriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? removedBattery = freezed,
  }) {
    return _then(_$BatteriesImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Battery>,
      removedBattery: freezed == removedBattery
          ? _value.removedBattery
          : removedBattery // ignore: cast_nullable_to_non_nullable
              as Battery?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatteriesImpl implements _Batteries {
  const _$BatteriesImpl(
      {final Map<String, Battery> cache = const <String, Battery>{},
      this.removedBattery})
      : _cache = cache;

  factory _$BatteriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteriesImplFromJson(json);

  final Map<String, Battery> _cache;
  @override
  @JsonKey()
  Map<String, Battery> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  final Battery? removedBattery;

  @override
  String toString() {
    return 'Batteries(cache: $cache, removedBattery: $removedBattery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteriesImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache) &&
            (identical(other.removedBattery, removedBattery) ||
                other.removedBattery == removedBattery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cache), removedBattery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatteriesImplCopyWith<_$BatteriesImpl> get copyWith =>
      __$$BatteriesImplCopyWithImpl<_$BatteriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteriesImplToJson(
      this,
    );
  }
}

abstract class _Batteries implements Batteries {
  const factory _Batteries(
      {final Map<String, Battery> cache,
      final Battery? removedBattery}) = _$BatteriesImpl;

  factory _Batteries.fromJson(Map<String, dynamic> json) =
      _$BatteriesImpl.fromJson;

  @override
  Map<String, Battery> get cache;
  @override
  Battery? get removedBattery;
  @override
  @JsonKey(ignore: true)
  _$$BatteriesImplCopyWith<_$BatteriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Battery _$BatteryFromJson(Map<String, dynamic> json) {
  return _Battery.fromJson(json);
}

/// @nodoc
mixin _$Battery {
  String get id => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;
  String get capacity => throw _privateConstructorUsedError;
  String get voltage => throw _privateConstructorUsedError;
  String get technologyType =>
      throw _privateConstructorUsedError; // Li, NiCad, Sulfuric etc.
  String get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Battery value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Battery value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Battery value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteryCopyWith<Battery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryCopyWith<$Res> {
  factory $BatteryCopyWith(Battery value, $Res Function(Battery) then) =
      _$BatteryCopyWithImpl<$Res, Battery>;
  @useResult
  $Res call(
      {String id,
      String brandName,
      String capacity,
      String voltage,
      String technologyType,
      String price});
}

/// @nodoc
class _$BatteryCopyWithImpl<$Res, $Val extends Battery>
    implements $BatteryCopyWith<$Res> {
  _$BatteryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandName = null,
    Object? capacity = null,
    Object? voltage = null,
    Object? technologyType = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as String,
      technologyType: null == technologyType
          ? _value.technologyType
          : technologyType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatteryImplCopyWith<$Res> implements $BatteryCopyWith<$Res> {
  factory _$$BatteryImplCopyWith(
          _$BatteryImpl value, $Res Function(_$BatteryImpl) then) =
      __$$BatteryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brandName,
      String capacity,
      String voltage,
      String technologyType,
      String price});
}

/// @nodoc
class __$$BatteryImplCopyWithImpl<$Res>
    extends _$BatteryCopyWithImpl<$Res, _$BatteryImpl>
    implements _$$BatteryImplCopyWith<$Res> {
  __$$BatteryImplCopyWithImpl(
      _$BatteryImpl _value, $Res Function(_$BatteryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandName = null,
    Object? capacity = null,
    Object? voltage = null,
    Object? technologyType = null,
    Object? price = null,
  }) {
    return _then(_$BatteryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as String,
      technologyType: null == technologyType
          ? _value.technologyType
          : technologyType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatteryImpl implements _Battery {
  const _$BatteryImpl(
      {required this.id,
      required this.brandName,
      required this.capacity,
      required this.voltage,
      required this.technologyType,
      required this.price});

  factory _$BatteryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteryImplFromJson(json);

  @override
  final String id;
  @override
  final String brandName;
  @override
  final String capacity;
  @override
  final String voltage;
  @override
  final String technologyType;
// Li, NiCad, Sulfuric etc.
  @override
  final String price;

  @override
  String toString() {
    return 'Battery.raw(id: $id, brandName: $brandName, capacity: $capacity, voltage: $voltage, technologyType: $technologyType, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.technologyType, technologyType) ||
                other.technologyType == technologyType) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, brandName, capacity, voltage, technologyType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatteryImplCopyWith<_$BatteryImpl> get copyWith =>
      __$$BatteryImplCopyWithImpl<_$BatteryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)
        raw,
  }) {
    return raw(id, brandName, capacity, voltage, technologyType, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)?
        raw,
  }) {
    return raw?.call(id, brandName, capacity, voltage, technologyType, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String brandName, String capacity,
            String voltage, String technologyType, String price)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(id, brandName, capacity, voltage, technologyType, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Battery value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Battery value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Battery value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteryImplToJson(
      this,
    );
  }
}

abstract class _Battery implements Battery {
  const factory _Battery(
      {required final String id,
      required final String brandName,
      required final String capacity,
      required final String voltage,
      required final String technologyType,
      required final String price}) = _$BatteryImpl;

  factory _Battery.fromJson(Map<String, dynamic> json) = _$BatteryImpl.fromJson;

  @override
  String get id;
  @override
  String get brandName;
  @override
  String get capacity;
  @override
  String get voltage;
  @override
  String get technologyType;
  @override // Li, NiCad, Sulfuric etc.
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$BatteryImplCopyWith<_$BatteryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatteryEvent _$BatteryEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'add':
      return AddBatteryEvent.fromJson(json);
    case 'remove':
      return RemoveBatteryEvent.fromJson(json);
    case 'restore':
      return RestoreBatteryEvent.fromJson(json);
    case 'addToCart':
      return AddToCartBatteryEvent.fromJson(json);
    case 'removeFromCart':
      return RemoveFromCartBatteryEvent.fromJson(json);
    case 'update':
      return UpdateBatteryEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BatteryEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BatteryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryEventCopyWith<$Res> {
  factory $BatteryEventCopyWith(
          BatteryEvent value, $Res Function(BatteryEvent) then) =
      _$BatteryEventCopyWithImpl<$Res, BatteryEvent>;
}

/// @nodoc
class _$BatteryEventCopyWithImpl<$Res, $Val extends BatteryEvent>
    implements $BatteryEventCopyWith<$Res> {
  _$BatteryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddBatteryEventImplCopyWith<$Res> {
  factory _$$AddBatteryEventImplCopyWith(_$AddBatteryEventImpl value,
          $Res Function(_$AddBatteryEventImpl) then) =
      __$$AddBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery batteryToAdd});

  $BatteryCopyWith<$Res> get batteryToAdd;
}

/// @nodoc
class __$$AddBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$AddBatteryEventImpl>
    implements _$$AddBatteryEventImplCopyWith<$Res> {
  __$$AddBatteryEventImplCopyWithImpl(
      _$AddBatteryEventImpl _value, $Res Function(_$AddBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryToAdd = null,
  }) {
    return _then(_$AddBatteryEventImpl(
      batteryToAdd: null == batteryToAdd
          ? _value.batteryToAdd
          : batteryToAdd // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get batteryToAdd {
    return $BatteryCopyWith<$Res>(_value.batteryToAdd, (value) {
      return _then(_value.copyWith(batteryToAdd: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBatteryEventImpl implements AddBatteryEvent {
  const _$AddBatteryEventImpl({required this.batteryToAdd, final String? $type})
      : $type = $type ?? 'add';

  factory _$AddBatteryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBatteryEventImplFromJson(json);

  @override
  final Battery batteryToAdd;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.add(batteryToAdd: $batteryToAdd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBatteryEventImpl &&
            (identical(other.batteryToAdd, batteryToAdd) ||
                other.batteryToAdd == batteryToAdd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, batteryToAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBatteryEventImplCopyWith<_$AddBatteryEventImpl> get copyWith =>
      __$$AddBatteryEventImplCopyWithImpl<_$AddBatteryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return add(batteryToAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return add?.call(batteryToAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(batteryToAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBatteryEventImplToJson(
      this,
    );
  }
}

abstract class AddBatteryEvent implements BatteryEvent {
  const factory AddBatteryEvent({required final Battery batteryToAdd}) =
      _$AddBatteryEventImpl;

  factory AddBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$AddBatteryEventImpl.fromJson;

  Battery get batteryToAdd;
  @JsonKey(ignore: true)
  _$$AddBatteryEventImplCopyWith<_$AddBatteryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBatteryEventImplCopyWith<$Res> {
  factory _$$RemoveBatteryEventImplCopyWith(_$RemoveBatteryEventImpl value,
          $Res Function(_$RemoveBatteryEventImpl) then) =
      __$$RemoveBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery batteryToRemove});

  $BatteryCopyWith<$Res> get batteryToRemove;
}

/// @nodoc
class __$$RemoveBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$RemoveBatteryEventImpl>
    implements _$$RemoveBatteryEventImplCopyWith<$Res> {
  __$$RemoveBatteryEventImplCopyWithImpl(_$RemoveBatteryEventImpl _value,
      $Res Function(_$RemoveBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryToRemove = null,
  }) {
    return _then(_$RemoveBatteryEventImpl(
      batteryToRemove: null == batteryToRemove
          ? _value.batteryToRemove
          : batteryToRemove // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get batteryToRemove {
    return $BatteryCopyWith<$Res>(_value.batteryToRemove, (value) {
      return _then(_value.copyWith(batteryToRemove: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveBatteryEventImpl implements RemoveBatteryEvent {
  const _$RemoveBatteryEventImpl(
      {required this.batteryToRemove, final String? $type})
      : $type = $type ?? 'remove';

  factory _$RemoveBatteryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveBatteryEventImplFromJson(json);

  @override
  final Battery batteryToRemove;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.remove(batteryToRemove: $batteryToRemove)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBatteryEventImpl &&
            (identical(other.batteryToRemove, batteryToRemove) ||
                other.batteryToRemove == batteryToRemove));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, batteryToRemove);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBatteryEventImplCopyWith<_$RemoveBatteryEventImpl> get copyWith =>
      __$$RemoveBatteryEventImplCopyWithImpl<_$RemoveBatteryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return remove(batteryToRemove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return remove?.call(batteryToRemove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(batteryToRemove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveBatteryEventImplToJson(
      this,
    );
  }
}

abstract class RemoveBatteryEvent implements BatteryEvent {
  const factory RemoveBatteryEvent({required final Battery batteryToRemove}) =
      _$RemoveBatteryEventImpl;

  factory RemoveBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$RemoveBatteryEventImpl.fromJson;

  Battery get batteryToRemove;
  @JsonKey(ignore: true)
  _$$RemoveBatteryEventImplCopyWith<_$RemoveBatteryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreBatteryEventImplCopyWith<$Res> {
  factory _$$RestoreBatteryEventImplCopyWith(_$RestoreBatteryEventImpl value,
          $Res Function(_$RestoreBatteryEventImpl) then) =
      __$$RestoreBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery batteryToRestore});

  $BatteryCopyWith<$Res> get batteryToRestore;
}

/// @nodoc
class __$$RestoreBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$RestoreBatteryEventImpl>
    implements _$$RestoreBatteryEventImplCopyWith<$Res> {
  __$$RestoreBatteryEventImplCopyWithImpl(_$RestoreBatteryEventImpl _value,
      $Res Function(_$RestoreBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryToRestore = null,
  }) {
    return _then(_$RestoreBatteryEventImpl(
      batteryToRestore: null == batteryToRestore
          ? _value.batteryToRestore
          : batteryToRestore // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get batteryToRestore {
    return $BatteryCopyWith<$Res>(_value.batteryToRestore, (value) {
      return _then(_value.copyWith(batteryToRestore: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RestoreBatteryEventImpl implements RestoreBatteryEvent {
  const _$RestoreBatteryEventImpl(
      {required this.batteryToRestore, final String? $type})
      : $type = $type ?? 'restore';

  factory _$RestoreBatteryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestoreBatteryEventImplFromJson(json);

  @override
  final Battery batteryToRestore;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.restore(batteryToRestore: $batteryToRestore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreBatteryEventImpl &&
            (identical(other.batteryToRestore, batteryToRestore) ||
                other.batteryToRestore == batteryToRestore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, batteryToRestore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreBatteryEventImplCopyWith<_$RestoreBatteryEventImpl> get copyWith =>
      __$$RestoreBatteryEventImplCopyWithImpl<_$RestoreBatteryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return restore(batteryToRestore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return restore?.call(batteryToRestore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(batteryToRestore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RestoreBatteryEventImplToJson(
      this,
    );
  }
}

abstract class RestoreBatteryEvent implements BatteryEvent {
  const factory RestoreBatteryEvent({required final Battery batteryToRestore}) =
      _$RestoreBatteryEventImpl;

  factory RestoreBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$RestoreBatteryEventImpl.fromJson;

  Battery get batteryToRestore;
  @JsonKey(ignore: true)
  _$$RestoreBatteryEventImplCopyWith<_$RestoreBatteryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartBatteryEventImplCopyWith<$Res> {
  factory _$$AddToCartBatteryEventImplCopyWith(
          _$AddToCartBatteryEventImpl value,
          $Res Function(_$AddToCartBatteryEventImpl) then) =
      __$$AddToCartBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery battery});

  $BatteryCopyWith<$Res> get battery;
}

/// @nodoc
class __$$AddToCartBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$AddToCartBatteryEventImpl>
    implements _$$AddToCartBatteryEventImplCopyWith<$Res> {
  __$$AddToCartBatteryEventImplCopyWithImpl(_$AddToCartBatteryEventImpl _value,
      $Res Function(_$AddToCartBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battery = null,
  }) {
    return _then(_$AddToCartBatteryEventImpl(
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get battery {
    return $BatteryCopyWith<$Res>(_value.battery, (value) {
      return _then(_value.copyWith(battery: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToCartBatteryEventImpl implements AddToCartBatteryEvent {
  const _$AddToCartBatteryEventImpl(
      {required this.battery, final String? $type})
      : $type = $type ?? 'addToCart';

  factory _$AddToCartBatteryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartBatteryEventImplFromJson(json);

  @override
  final Battery battery;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.addToCart(battery: $battery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartBatteryEventImpl &&
            (identical(other.battery, battery) || other.battery == battery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, battery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartBatteryEventImplCopyWith<_$AddToCartBatteryEventImpl>
      get copyWith => __$$AddToCartBatteryEventImplCopyWithImpl<
          _$AddToCartBatteryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return addToCart(battery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return addToCart?.call(battery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(battery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartBatteryEventImplToJson(
      this,
    );
  }
}

abstract class AddToCartBatteryEvent implements BatteryEvent {
  const factory AddToCartBatteryEvent({required final Battery battery}) =
      _$AddToCartBatteryEventImpl;

  factory AddToCartBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$AddToCartBatteryEventImpl.fromJson;

  Battery get battery;
  @JsonKey(ignore: true)
  _$$AddToCartBatteryEventImplCopyWith<_$AddToCartBatteryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartBatteryEventImplCopyWith<$Res> {
  factory _$$RemoveFromCartBatteryEventImplCopyWith(
          _$RemoveFromCartBatteryEventImpl value,
          $Res Function(_$RemoveFromCartBatteryEventImpl) then) =
      __$$RemoveFromCartBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery battery});

  $BatteryCopyWith<$Res> get battery;
}

/// @nodoc
class __$$RemoveFromCartBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$RemoveFromCartBatteryEventImpl>
    implements _$$RemoveFromCartBatteryEventImplCopyWith<$Res> {
  __$$RemoveFromCartBatteryEventImplCopyWithImpl(
      _$RemoveFromCartBatteryEventImpl _value,
      $Res Function(_$RemoveFromCartBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battery = null,
  }) {
    return _then(_$RemoveFromCartBatteryEventImpl(
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get battery {
    return $BatteryCopyWith<$Res>(_value.battery, (value) {
      return _then(_value.copyWith(battery: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveFromCartBatteryEventImpl implements RemoveFromCartBatteryEvent {
  const _$RemoveFromCartBatteryEventImpl(
      {required this.battery, final String? $type})
      : $type = $type ?? 'removeFromCart';

  factory _$RemoveFromCartBatteryEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoveFromCartBatteryEventImplFromJson(json);

  @override
  final Battery battery;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.removeFromCart(battery: $battery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartBatteryEventImpl &&
            (identical(other.battery, battery) || other.battery == battery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, battery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartBatteryEventImplCopyWith<_$RemoveFromCartBatteryEventImpl>
      get copyWith => __$$RemoveFromCartBatteryEventImplCopyWithImpl<
          _$RemoveFromCartBatteryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return removeFromCart(battery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return removeFromCart?.call(battery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(battery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFromCartBatteryEventImplToJson(
      this,
    );
  }
}

abstract class RemoveFromCartBatteryEvent implements BatteryEvent {
  const factory RemoveFromCartBatteryEvent({required final Battery battery}) =
      _$RemoveFromCartBatteryEventImpl;

  factory RemoveFromCartBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$RemoveFromCartBatteryEventImpl.fromJson;

  Battery get battery;
  @JsonKey(ignore: true)
  _$$RemoveFromCartBatteryEventImplCopyWith<_$RemoveFromCartBatteryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBatteryEventImplCopyWith<$Res> {
  factory _$$UpdateBatteryEventImplCopyWith(_$UpdateBatteryEventImpl value,
          $Res Function(_$UpdateBatteryEventImpl) then) =
      __$$UpdateBatteryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Battery oldBattery, Battery newBattery});

  $BatteryCopyWith<$Res> get oldBattery;
  $BatteryCopyWith<$Res> get newBattery;
}

/// @nodoc
class __$$UpdateBatteryEventImplCopyWithImpl<$Res>
    extends _$BatteryEventCopyWithImpl<$Res, _$UpdateBatteryEventImpl>
    implements _$$UpdateBatteryEventImplCopyWith<$Res> {
  __$$UpdateBatteryEventImplCopyWithImpl(_$UpdateBatteryEventImpl _value,
      $Res Function(_$UpdateBatteryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldBattery = null,
    Object? newBattery = null,
  }) {
    return _then(_$UpdateBatteryEventImpl(
      oldBattery: null == oldBattery
          ? _value.oldBattery
          : oldBattery // ignore: cast_nullable_to_non_nullable
              as Battery,
      newBattery: null == newBattery
          ? _value.newBattery
          : newBattery // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get oldBattery {
    return $BatteryCopyWith<$Res>(_value.oldBattery, (value) {
      return _then(_value.copyWith(oldBattery: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BatteryCopyWith<$Res> get newBattery {
    return $BatteryCopyWith<$Res>(_value.newBattery, (value) {
      return _then(_value.copyWith(newBattery: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateBatteryEventImpl implements UpdateBatteryEvent {
  const _$UpdateBatteryEventImpl(
      {required this.oldBattery, required this.newBattery, final String? $type})
      : $type = $type ?? 'update';

  factory _$UpdateBatteryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateBatteryEventImplFromJson(json);

  @override
  final Battery oldBattery;
  @override
  final Battery newBattery;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BatteryEvent.update(oldBattery: $oldBattery, newBattery: $newBattery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBatteryEventImpl &&
            (identical(other.oldBattery, oldBattery) ||
                other.oldBattery == oldBattery) &&
            (identical(other.newBattery, newBattery) ||
                other.newBattery == newBattery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldBattery, newBattery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBatteryEventImplCopyWith<_$UpdateBatteryEventImpl> get copyWith =>
      __$$UpdateBatteryEventImplCopyWithImpl<_$UpdateBatteryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Battery batteryToAdd) add,
    required TResult Function(Battery batteryToRemove) remove,
    required TResult Function(Battery batteryToRestore) restore,
    required TResult Function(Battery battery) addToCart,
    required TResult Function(Battery battery) removeFromCart,
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return update(oldBattery, newBattery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery batteryToRestore)? restore,
    TResult? Function(Battery battery)? addToCart,
    TResult? Function(Battery battery)? removeFromCart,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return update?.call(oldBattery, newBattery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery batteryToRestore)? restore,
    TResult Function(Battery battery)? addToCart,
    TResult Function(Battery battery)? removeFromCart,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(oldBattery, newBattery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(RestoreBatteryEvent value) restore,
    required TResult Function(AddToCartBatteryEvent value) addToCart,
    required TResult Function(RemoveFromCartBatteryEvent value) removeFromCart,
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(RestoreBatteryEvent value)? restore,
    TResult? Function(AddToCartBatteryEvent value)? addToCart,
    TResult? Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
    TResult Function(RestoreBatteryEvent value)? restore,
    TResult Function(AddToCartBatteryEvent value)? addToCart,
    TResult Function(RemoveFromCartBatteryEvent value)? removeFromCart,
    TResult Function(UpdateBatteryEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateBatteryEventImplToJson(
      this,
    );
  }
}

abstract class UpdateBatteryEvent implements BatteryEvent {
  const factory UpdateBatteryEvent(
      {required final Battery oldBattery,
      required final Battery newBattery}) = _$UpdateBatteryEventImpl;

  factory UpdateBatteryEvent.fromJson(Map<String, dynamic> json) =
      _$UpdateBatteryEventImpl.fromJson;

  Battery get oldBattery;
  Battery get newBattery;
  @JsonKey(ignore: true)
  _$$UpdateBatteryEventImplCopyWith<_$UpdateBatteryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
