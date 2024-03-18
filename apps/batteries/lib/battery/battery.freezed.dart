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
class _$BatteriesImpl extends _Batteries {
  const _$BatteriesImpl(
      {final Map<String, Battery> cache = const <String, Battery>{},
      this.removedBattery})
      : _cache = cache,
        super._();

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

abstract class _Batteries extends Batteries {
  const factory _Batteries(
      {final Map<String, Battery> cache,
      final Battery? removedBattery}) = _$BatteriesImpl;
  const _Batteries._() : super._();

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
