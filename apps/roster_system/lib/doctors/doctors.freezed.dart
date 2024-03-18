// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String get qualifications => throw _privateConstructorUsedError;
  String get contactDetails => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  String get departments => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      DateTime dateOfBirth,
      String qualifications,
      String contactDetails,
      String profilePicture,
      String departments,
      bool editing});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? qualifications = null,
    Object? contactDetails = null,
    Object? profilePicture = null,
    Object? departments = null,
    Object? editing = null,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qualifications: null == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as String,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      DateTime dateOfBirth,
      String qualifications,
      String contactDetails,
      String profilePicture,
      String departments,
      bool editing});
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? qualifications = null,
    Object? contactDetails = null,
    Object? profilePicture = null,
    Object? departments = null,
    Object? editing = null,
  }) {
    return _then(_$DoctorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qualifications: null == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as String,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl extends _Doctor with DiagnosticableTreeMixin {
  const _$DoctorImpl(
      {required this.id,
      this.name = '',
      this.gender = Gender.male,
      required this.dateOfBirth,
      this.qualifications = '',
      this.contactDetails = '',
      this.profilePicture = '',
      this.departments = '',
      this.editing = true})
      : super._();

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final Gender gender;
  @override
  final DateTime dateOfBirth;
  @override
  @JsonKey()
  final String qualifications;
  @override
  @JsonKey()
  final String contactDetails;
  @override
  @JsonKey()
  final String profilePicture;
  @override
  @JsonKey()
  final String departments;
  @override
  @JsonKey()
  final bool editing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Doctor(id: $id, name: $name, gender: $gender, dateOfBirth: $dateOfBirth, qualifications: $qualifications, contactDetails: $contactDetails, profilePicture: $profilePicture, departments: $departments, editing: $editing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Doctor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('qualifications', qualifications))
      ..add(DiagnosticsProperty('contactDetails', contactDetails))
      ..add(DiagnosticsProperty('profilePicture', profilePicture))
      ..add(DiagnosticsProperty('departments', departments))
      ..add(DiagnosticsProperty('editing', editing));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.qualifications, qualifications) ||
                other.qualifications == qualifications) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.departments, departments) ||
                other.departments == departments) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, gender, dateOfBirth,
      qualifications, contactDetails, profilePicture, departments, editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor extends Doctor {
  const factory _Doctor(
      {required final String id,
      final String name,
      final Gender gender,
      required final DateTime dateOfBirth,
      final String qualifications,
      final String contactDetails,
      final String profilePicture,
      final String departments,
      final bool editing}) = _$DoctorImpl;
  const _Doctor._() : super._();

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Gender get gender;
  @override
  DateTime get dateOfBirth;
  @override
  String get qualifications;
  @override
  String get contactDetails;
  @override
  String get profilePicture;
  @override
  String get departments;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Doctors _$DoctorsFromJson(Map<String, dynamic> json) {
  return _Doctors.fromJson(json);
}

/// @nodoc
mixin _$Doctors {
  Map<String, Doctor> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorsCopyWith<Doctors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsCopyWith<$Res> {
  factory $DoctorsCopyWith(Doctors value, $Res Function(Doctors) then) =
      _$DoctorsCopyWithImpl<$Res, Doctors>;
  @useResult
  $Res call({Map<String, Doctor> cache});
}

/// @nodoc
class _$DoctorsCopyWithImpl<$Res, $Val extends Doctors>
    implements $DoctorsCopyWith<$Res> {
  _$DoctorsCopyWithImpl(this._value, this._then);

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
              as Map<String, Doctor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorsImplCopyWith<$Res> implements $DoctorsCopyWith<$Res> {
  factory _$$DoctorsImplCopyWith(
          _$DoctorsImpl value, $Res Function(_$DoctorsImpl) then) =
      __$$DoctorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Doctor> cache});
}

/// @nodoc
class __$$DoctorsImplCopyWithImpl<$Res>
    extends _$DoctorsCopyWithImpl<$Res, _$DoctorsImpl>
    implements _$$DoctorsImplCopyWith<$Res> {
  __$$DoctorsImplCopyWithImpl(
      _$DoctorsImpl _value, $Res Function(_$DoctorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$DoctorsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Doctor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorsImpl extends _Doctors with DiagnosticableTreeMixin {
  const _$DoctorsImpl(
      {final Map<String, Doctor> cache = const <String, Doctor>{}})
      : _cache = cache,
        super._();

  factory _$DoctorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorsImplFromJson(json);

  final Map<String, Doctor> _cache;
  @override
  @JsonKey()
  Map<String, Doctor> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Doctors(cache: $cache)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Doctors'))
      ..add(DiagnosticsProperty('cache', cache));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsImplCopyWith<_$DoctorsImpl> get copyWith =>
      __$$DoctorsImplCopyWithImpl<_$DoctorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorsImplToJson(
      this,
    );
  }
}

abstract class _Doctors extends Doctors {
  const factory _Doctors({final Map<String, Doctor> cache}) = _$DoctorsImpl;
  const _Doctors._() : super._();

  factory _Doctors.fromJson(Map<String, dynamic> json) = _$DoctorsImpl.fromJson;

  @override
  Map<String, Doctor> get cache;
  @override
  @JsonKey(ignore: true)
  _$$DoctorsImplCopyWith<_$DoctorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
