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
  List<Patient> get patients => throw _privateConstructorUsedError;

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
  $Res call({List<Patient> patients});
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
    Object? patients = null,
  }) {
    return _then(_value.copyWith(
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
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
  $Res call({List<Patient> patients});
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
    Object? patients = null,
  }) {
    return _then(_$PatientsImpl(
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientsImpl implements _Patients {
  const _$PatientsImpl({final List<Patient> patients = const <Patient>[]})
      : _patients = patients;

  factory _$PatientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientsImplFromJson(json);

  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  String toString() {
    return 'Patients(patients: $patients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsImpl &&
            const DeepCollectionEquality().equals(other._patients, _patients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_patients));

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
  const factory _Patients({final List<Patient> patients}) = _$PatientsImpl;

  factory _Patients.fromJson(Map<String, dynamic> json) =
      _$PatientsImpl.fromJson;

  @override
  List<Patient> get patients;
  @override
  @JsonKey(ignore: true)
  _$$PatientsImplCopyWith<_$PatientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
