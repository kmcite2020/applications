// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patients _$PatientsFromJson(Map<String, dynamic> json) {
  return _Patients.fromJson(json);
}

/// @nodoc
mixin _$Patients {
  Map<String, Patient> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientsCopyWith<Patients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientsCopyWith<$Res> {
  factory $PatientsCopyWith(Patients value, $Res Function(Patients) then) =
      _$PatientsCopyWithImpl<$Res, Patients>;
  @useResult
  $Res call({Map<String, Patient> cache});
}

/// @nodoc
class _$PatientsCopyWithImpl<$Res, $Val extends Patients>
    implements $PatientsCopyWith<$Res> {
  _$PatientsCopyWithImpl(this._value, this._then);

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
              as Map<String, Patient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientsImplCopyWith<$Res>
    implements $PatientsCopyWith<$Res> {
  factory _$$PatientsImplCopyWith(
          _$PatientsImpl value, $Res Function(_$PatientsImpl) then) =
      __$$PatientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Patient> cache});
}

/// @nodoc
class __$$PatientsImplCopyWithImpl<$Res>
    extends _$PatientsCopyWithImpl<$Res, _$PatientsImpl>
    implements _$$PatientsImplCopyWith<$Res> {
  __$$PatientsImplCopyWithImpl(
      _$PatientsImpl _value, $Res Function(_$PatientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$PatientsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Patient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientsImpl implements _Patients {
  const _$PatientsImpl(
      {final Map<String, Patient> cache = const <String, Patient>{}})
      : _cache = cache;

  factory _$PatientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientsImplFromJson(json);

  final Map<String, Patient> _cache;
  @override
  @JsonKey()
  Map<String, Patient> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Patients(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsImplCopyWith<_$PatientsImpl> get copyWith =>
      __$$PatientsImplCopyWithImpl<_$PatientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientsImplToJson(
      this,
    );
  }
}

abstract class _Patients implements Patients {
  const factory _Patients({final Map<String, Patient> cache}) = _$PatientsImpl;

  factory _Patients.fromJson(Map<String, dynamic> json) =
      _$PatientsImpl.fromJson;

  @override
  Map<String, Patient> get cache;
  @override
  @JsonKey(ignore: true)
  _$$PatientsImplCopyWith<_$PatientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  List<Investigation> get investigations => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  OutComeStatus get outComeStatus => throw _privateConstructorUsedError;
  String get diagnosis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {String id,
      String name,
      String age,
      List<Investigation> investigations,
      String createdAt,
      OutComeStatus outComeStatus,
      String diagnosis});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? investigations = null,
    Object? createdAt = null,
    Object? outComeStatus = null,
    Object? diagnosis = null,
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
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      investigations: null == investigations
          ? _value.investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<Investigation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      outComeStatus: null == outComeStatus
          ? _value.outComeStatus
          : outComeStatus // ignore: cast_nullable_to_non_nullable
              as OutComeStatus,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String age,
      List<Investigation> investigations,
      String createdAt,
      OutComeStatus outComeStatus,
      String diagnosis});
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? investigations = null,
    Object? createdAt = null,
    Object? outComeStatus = null,
    Object? diagnosis = null,
  }) {
    return _then(_$PatientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      investigations: null == investigations
          ? _value._investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<Investigation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      outComeStatus: null == outComeStatus
          ? _value.outComeStatus
          : outComeStatus // ignore: cast_nullable_to_non_nullable
              as OutComeStatus,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl extends _Patient {
  const _$PatientImpl(
      {this.id = '',
      this.name = '',
      this.age = '',
      final List<Investigation> investigations = const <Investigation>[],
      this.createdAt = '',
      this.outComeStatus = OutComeStatus.emergency,
      this.diagnosis = ''})
      : _investigations = investigations,
        super._();

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String age;
  final List<Investigation> _investigations;
  @override
  @JsonKey()
  List<Investigation> get investigations {
    if (_investigations is EqualUnmodifiableListView) return _investigations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigations);
  }

  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final OutComeStatus outComeStatus;
  @override
  @JsonKey()
  final String diagnosis;

  @override
  String toString() {
    return 'Patient(id: $id, name: $name, age: $age, investigations: $investigations, createdAt: $createdAt, outComeStatus: $outComeStatus, diagnosis: $diagnosis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._investigations, _investigations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.outComeStatus, outComeStatus) ||
                other.outComeStatus == outComeStatus) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      age,
      const DeepCollectionEquality().hash(_investigations),
      createdAt,
      outComeStatus,
      diagnosis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient extends Patient {
  const factory _Patient(
      {final String id,
      final String name,
      final String age,
      final List<Investigation> investigations,
      final String createdAt,
      final OutComeStatus outComeStatus,
      final String diagnosis}) = _$PatientImpl;
  const _Patient._() : super._();

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get age;
  @override
  List<Investigation> get investigations;
  @override
  String get createdAt;
  @override
  OutComeStatus get outComeStatus;
  @override
  String get diagnosis;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
