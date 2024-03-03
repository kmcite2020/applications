// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investigations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Investigation _$InvestigationFromJson(Map<String, dynamic> json) {
  return _Investigation.fromJson(json);
}

/// @nodoc
mixin _$Investigation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, int price) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, int price)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, int price)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Investigation value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Investigation value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Investigation value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestigationCopyWith<Investigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestigationCopyWith<$Res> {
  factory $InvestigationCopyWith(
          Investigation value, $Res Function(Investigation) then) =
      _$InvestigationCopyWithImpl<$Res, Investigation>;
  @useResult
  $Res call({String id, String name, int price});
}

/// @nodoc
class _$InvestigationCopyWithImpl<$Res, $Val extends Investigation>
    implements $InvestigationCopyWith<$Res> {
  _$InvestigationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestigationImplCopyWith<$Res>
    implements $InvestigationCopyWith<$Res> {
  factory _$$InvestigationImplCopyWith(
          _$InvestigationImpl value, $Res Function(_$InvestigationImpl) then) =
      __$$InvestigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int price});
}

/// @nodoc
class __$$InvestigationImplCopyWithImpl<$Res>
    extends _$InvestigationCopyWithImpl<$Res, _$InvestigationImpl>
    implements _$$InvestigationImplCopyWith<$Res> {
  __$$InvestigationImplCopyWithImpl(
      _$InvestigationImpl _value, $Res Function(_$InvestigationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$InvestigationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestigationImpl implements _Investigation {
  const _$InvestigationImpl({this.id = '', this.name = '', this.price = 200});

  factory _$InvestigationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int price;

  @override
  String toString() {
    return 'Investigation.create(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationImplCopyWith<_$InvestigationImpl> get copyWith =>
      __$$InvestigationImplCopyWithImpl<_$InvestigationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, int price) create,
  }) {
    return create(id, name, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, int price)? create,
  }) {
    return create?.call(id, name, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, int price)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(id, name, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Investigation value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Investigation value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Investigation value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationImplToJson(
      this,
    );
  }
}

abstract class _Investigation implements Investigation {
  const factory _Investigation(
      {final String id,
      final String name,
      final int price}) = _$InvestigationImpl;

  factory _Investigation.fromJson(Map<String, dynamic> json) =
      _$InvestigationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$InvestigationImplCopyWith<_$InvestigationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Investigations _$InvestigationsFromJson(Map<String, dynamic> json) {
  return _Investigations.fromJson(json);
}

/// @nodoc
mixin _$Investigations {
  Map<String, Investigation> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestigationsCopyWith<Investigations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestigationsCopyWith<$Res> {
  factory $InvestigationsCopyWith(
          Investigations value, $Res Function(Investigations) then) =
      _$InvestigationsCopyWithImpl<$Res, Investigations>;
  @useResult
  $Res call({Map<String, Investigation> cache});
}

/// @nodoc
class _$InvestigationsCopyWithImpl<$Res, $Val extends Investigations>
    implements $InvestigationsCopyWith<$Res> {
  _$InvestigationsCopyWithImpl(this._value, this._then);

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
              as Map<String, Investigation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestigationsImplCopyWith<$Res>
    implements $InvestigationsCopyWith<$Res> {
  factory _$$InvestigationsImplCopyWith(_$InvestigationsImpl value,
          $Res Function(_$InvestigationsImpl) then) =
      __$$InvestigationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Investigation> cache});
}

/// @nodoc
class __$$InvestigationsImplCopyWithImpl<$Res>
    extends _$InvestigationsCopyWithImpl<$Res, _$InvestigationsImpl>
    implements _$$InvestigationsImplCopyWith<$Res> {
  __$$InvestigationsImplCopyWithImpl(
      _$InvestigationsImpl _value, $Res Function(_$InvestigationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$InvestigationsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Investigation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestigationsImpl implements _Investigations {
  const _$InvestigationsImpl(
      {final Map<String, Investigation> cache =
          const <String, Investigation>{}})
      : _cache = cache;

  factory _$InvestigationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationsImplFromJson(json);

  final Map<String, Investigation> _cache;
  @override
  @JsonKey()
  Map<String, Investigation> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Investigations(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationsImplCopyWith<_$InvestigationsImpl> get copyWith =>
      __$$InvestigationsImplCopyWithImpl<_$InvestigationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationsImplToJson(
      this,
    );
  }
}

abstract class _Investigations implements Investigations {
  const factory _Investigations({final Map<String, Investigation> cache}) =
      _$InvestigationsImpl;

  factory _Investigations.fromJson(Map<String, dynamic> json) =
      _$InvestigationsImpl.fromJson;

  @override
  Map<String, Investigation> get cache;
  @override
  @JsonKey(ignore: true)
  _$$InvestigationsImplCopyWith<_$InvestigationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
