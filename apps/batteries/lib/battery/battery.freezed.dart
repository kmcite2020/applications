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

Battery _$BatteryFromJson(Map<String, dynamic> json) {
  return _Battery.fromJson(json);
}

/// @nodoc
mixin _$Battery {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteryCopyWith<Battery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryCopyWith<$Res> {
  factory $BatteryCopyWith(Battery value, $Res Function(Battery) then) =
      _$BatteryCopyWithImpl<$Res, Battery>;
  @useResult
  $Res call({String id, String name});
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
    Object? name = null,
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
  $Res call({String id, String name});
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
    Object? name = null,
  }) {
    return _then(_$BatteryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatteryImpl implements _Battery {
  const _$BatteryImpl({this.id = '', this.name = ''});

  factory _$BatteryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteryImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Battery(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatteryImplCopyWith<_$BatteryImpl> get copyWith =>
      __$$BatteryImplCopyWithImpl<_$BatteryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteryImplToJson(
      this,
    );
  }
}

abstract class _Battery implements Battery {
  const factory _Battery({final String id, final String name}) = _$BatteryImpl;

  factory _Battery.fromJson(Map<String, dynamic> json) = _$BatteryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
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
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
    TResult Function(Battery oldBattery, Battery newBattery)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBatteryEvent value) add,
    required TResult Function(RemoveBatteryEvent value) remove,
    required TResult Function(UpdateBatteryEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
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
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return add(batteryToAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return add?.call(batteryToAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
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
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
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
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return remove(batteryToRemove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return remove?.call(batteryToRemove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
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
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
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
    required TResult Function(Battery oldBattery, Battery newBattery) update,
  }) {
    return update(oldBattery, newBattery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Battery batteryToAdd)? add,
    TResult? Function(Battery batteryToRemove)? remove,
    TResult? Function(Battery oldBattery, Battery newBattery)? update,
  }) {
    return update?.call(oldBattery, newBattery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Battery batteryToAdd)? add,
    TResult Function(Battery batteryToRemove)? remove,
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
    required TResult Function(UpdateBatteryEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBatteryEvent value)? add,
    TResult? Function(RemoveBatteryEvent value)? remove,
    TResult? Function(UpdateBatteryEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBatteryEvent value)? add,
    TResult Function(RemoveBatteryEvent value)? remove,
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
