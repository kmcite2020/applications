// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

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
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DepartmentImpl(
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
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl({this.id = '', this.name = ''});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Department(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department({final String id, final String name}) =
      _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Departments _$DepartmentsFromJson(Map<String, dynamic> json) {
  return _Departments.fromJson(json);
}

/// @nodoc
mixin _$Departments {
  Map<String, Department> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentsCopyWith<Departments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentsCopyWith<$Res> {
  factory $DepartmentsCopyWith(
          Departments value, $Res Function(Departments) then) =
      _$DepartmentsCopyWithImpl<$Res, Departments>;
  @useResult
  $Res call({Map<String, Department> cache});
}

/// @nodoc
class _$DepartmentsCopyWithImpl<$Res, $Val extends Departments>
    implements $DepartmentsCopyWith<$Res> {
  _$DepartmentsCopyWithImpl(this._value, this._then);

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
              as Map<String, Department>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentsImplCopyWith<$Res>
    implements $DepartmentsCopyWith<$Res> {
  factory _$$DepartmentsImplCopyWith(
          _$DepartmentsImpl value, $Res Function(_$DepartmentsImpl) then) =
      __$$DepartmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Department> cache});
}

/// @nodoc
class __$$DepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentsCopyWithImpl<$Res, _$DepartmentsImpl>
    implements _$$DepartmentsImplCopyWith<$Res> {
  __$$DepartmentsImplCopyWithImpl(
      _$DepartmentsImpl _value, $Res Function(_$DepartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$DepartmentsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Department>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentsImpl implements _Departments {
  const _$DepartmentsImpl(
      {final Map<String, Department> cache = const <String, Department>{}})
      : _cache = cache;

  factory _$DepartmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentsImplFromJson(json);

  final Map<String, Department> _cache;
  @override
  @JsonKey()
  Map<String, Department> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Departments(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      __$$DepartmentsImplCopyWithImpl<_$DepartmentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentsImplToJson(
      this,
    );
  }
}

abstract class _Departments implements Departments {
  const factory _Departments({final Map<String, Department> cache}) =
      _$DepartmentsImpl;

  factory _Departments.fromJson(Map<String, dynamic> json) =
      _$DepartmentsImpl.fromJson;

  @override
  Map<String, Department> get cache;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
