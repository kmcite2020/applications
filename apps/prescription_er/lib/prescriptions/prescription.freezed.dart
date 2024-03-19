// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CNIC get cnic => throw _privateConstructorUsedError;
  Duration get age => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  bool get isAttended => throw _privateConstructorUsedError;
  DateTime get arrivalAt => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  PatientStatus get patientStatus => throw _privateConstructorUsedError;
  Classification get classification => throw _privateConstructorUsedError;
  Triage get triage => throw _privateConstructorUsedError;
  List<Complaint> get presentingComplaints =>
      throw _privateConstructorUsedError;
  Vitals get vitals => throw _privateConstructorUsedError;
  Examinations get examinations => throw _privateConstructorUsedError;
  List<Investigation> get investigations => throw _privateConstructorUsedError;
  List<Management> get managements => throw _privateConstructorUsedError;
  String get provisionalDiagnosis => throw _privateConstructorUsedError;
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
      CNIC cnic,
      Duration age,
      Gender gender,
      bool isAttended,
      DateTime arrivalAt,
      Address address,
      PatientStatus patientStatus,
      Classification classification,
      Triage triage,
      List<Complaint> presentingComplaints,
      Vitals vitals,
      Examinations examinations,
      List<Investigation> investigations,
      List<Management> managements,
      String provisionalDiagnosis,
      String diagnosis});

  $CNICCopyWith<$Res> get cnic;
  $AddressCopyWith<$Res> get address;
  $VitalsCopyWith<$Res> get vitals;
  $ExaminationsCopyWith<$Res> get examinations;
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
    Object? cnic = null,
    Object? age = null,
    Object? gender = null,
    Object? isAttended = null,
    Object? arrivalAt = null,
    Object? address = null,
    Object? patientStatus = null,
    Object? classification = null,
    Object? triage = null,
    Object? presentingComplaints = null,
    Object? vitals = null,
    Object? examinations = null,
    Object? investigations = null,
    Object? managements = null,
    Object? provisionalDiagnosis = null,
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
      cnic: null == cnic
          ? _value.cnic
          : cnic // ignore: cast_nullable_to_non_nullable
              as CNIC,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Duration,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      isAttended: null == isAttended
          ? _value.isAttended
          : isAttended // ignore: cast_nullable_to_non_nullable
              as bool,
      arrivalAt: null == arrivalAt
          ? _value.arrivalAt
          : arrivalAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      patientStatus: null == patientStatus
          ? _value.patientStatus
          : patientStatus // ignore: cast_nullable_to_non_nullable
              as PatientStatus,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Classification,
      triage: null == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as Triage,
      presentingComplaints: null == presentingComplaints
          ? _value.presentingComplaints
          : presentingComplaints // ignore: cast_nullable_to_non_nullable
              as List<Complaint>,
      vitals: null == vitals
          ? _value.vitals
          : vitals // ignore: cast_nullable_to_non_nullable
              as Vitals,
      examinations: null == examinations
          ? _value.examinations
          : examinations // ignore: cast_nullable_to_non_nullable
              as Examinations,
      investigations: null == investigations
          ? _value.investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<Investigation>,
      managements: null == managements
          ? _value.managements
          : managements // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      provisionalDiagnosis: null == provisionalDiagnosis
          ? _value.provisionalDiagnosis
          : provisionalDiagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CNICCopyWith<$Res> get cnic {
    return $CNICCopyWith<$Res>(_value.cnic, (value) {
      return _then(_value.copyWith(cnic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VitalsCopyWith<$Res> get vitals {
    return $VitalsCopyWith<$Res>(_value.vitals, (value) {
      return _then(_value.copyWith(vitals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExaminationsCopyWith<$Res> get examinations {
    return $ExaminationsCopyWith<$Res>(_value.examinations, (value) {
      return _then(_value.copyWith(examinations: value) as $Val);
    });
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
      CNIC cnic,
      Duration age,
      Gender gender,
      bool isAttended,
      DateTime arrivalAt,
      Address address,
      PatientStatus patientStatus,
      Classification classification,
      Triage triage,
      List<Complaint> presentingComplaints,
      Vitals vitals,
      Examinations examinations,
      List<Investigation> investigations,
      List<Management> managements,
      String provisionalDiagnosis,
      String diagnosis});

  @override
  $CNICCopyWith<$Res> get cnic;
  @override
  $AddressCopyWith<$Res> get address;
  @override
  $VitalsCopyWith<$Res> get vitals;
  @override
  $ExaminationsCopyWith<$Res> get examinations;
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
    Object? cnic = null,
    Object? age = null,
    Object? gender = null,
    Object? isAttended = null,
    Object? arrivalAt = null,
    Object? address = null,
    Object? patientStatus = null,
    Object? classification = null,
    Object? triage = null,
    Object? presentingComplaints = null,
    Object? vitals = null,
    Object? examinations = null,
    Object? investigations = null,
    Object? managements = null,
    Object? provisionalDiagnosis = null,
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
      cnic: null == cnic
          ? _value.cnic
          : cnic // ignore: cast_nullable_to_non_nullable
              as CNIC,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Duration,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      isAttended: null == isAttended
          ? _value.isAttended
          : isAttended // ignore: cast_nullable_to_non_nullable
              as bool,
      arrivalAt: null == arrivalAt
          ? _value.arrivalAt
          : arrivalAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      patientStatus: null == patientStatus
          ? _value.patientStatus
          : patientStatus // ignore: cast_nullable_to_non_nullable
              as PatientStatus,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Classification,
      triage: null == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as Triage,
      presentingComplaints: null == presentingComplaints
          ? _value._presentingComplaints
          : presentingComplaints // ignore: cast_nullable_to_non_nullable
              as List<Complaint>,
      vitals: null == vitals
          ? _value.vitals
          : vitals // ignore: cast_nullable_to_non_nullable
              as Vitals,
      examinations: null == examinations
          ? _value.examinations
          : examinations // ignore: cast_nullable_to_non_nullable
              as Examinations,
      investigations: null == investigations
          ? _value._investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<Investigation>,
      managements: null == managements
          ? _value._managements
          : managements // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      provisionalDiagnosis: null == provisionalDiagnosis
          ? _value.provisionalDiagnosis
          : provisionalDiagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {required this.id,
      required this.name,
      required this.cnic,
      required this.age,
      required this.gender,
      required this.isAttended,
      required this.arrivalAt,
      required this.address,
      required this.patientStatus,
      required this.classification,
      required this.triage,
      required final List<Complaint> presentingComplaints,
      required this.vitals,
      required this.examinations,
      required final List<Investigation> investigations,
      required final List<Management> managements,
      required this.provisionalDiagnosis,
      required this.diagnosis})
      : _presentingComplaints = presentingComplaints,
        _investigations = investigations,
        _managements = managements;

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final CNIC cnic;
  @override
  final Duration age;
  @override
  final Gender gender;
  @override
  final bool isAttended;
  @override
  final DateTime arrivalAt;
  @override
  final Address address;
  @override
  final PatientStatus patientStatus;
  @override
  final Classification classification;
  @override
  final Triage triage;
  final List<Complaint> _presentingComplaints;
  @override
  List<Complaint> get presentingComplaints {
    if (_presentingComplaints is EqualUnmodifiableListView)
      return _presentingComplaints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentingComplaints);
  }

  @override
  final Vitals vitals;
  @override
  final Examinations examinations;
  final List<Investigation> _investigations;
  @override
  List<Investigation> get investigations {
    if (_investigations is EqualUnmodifiableListView) return _investigations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigations);
  }

  final List<Management> _managements;
  @override
  List<Management> get managements {
    if (_managements is EqualUnmodifiableListView) return _managements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managements);
  }

  @override
  final String provisionalDiagnosis;
  @override
  final String diagnosis;

  @override
  String toString() {
    return 'Patient(id: $id, name: $name, cnic: $cnic, age: $age, gender: $gender, isAttended: $isAttended, arrivalAt: $arrivalAt, address: $address, patientStatus: $patientStatus, classification: $classification, triage: $triage, presentingComplaints: $presentingComplaints, vitals: $vitals, examinations: $examinations, investigations: $investigations, managements: $managements, provisionalDiagnosis: $provisionalDiagnosis, diagnosis: $diagnosis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cnic, cnic) || other.cnic == cnic) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isAttended, isAttended) ||
                other.isAttended == isAttended) &&
            (identical(other.arrivalAt, arrivalAt) ||
                other.arrivalAt == arrivalAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.patientStatus, patientStatus) ||
                other.patientStatus == patientStatus) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.triage, triage) || other.triage == triage) &&
            const DeepCollectionEquality()
                .equals(other._presentingComplaints, _presentingComplaints) &&
            (identical(other.vitals, vitals) || other.vitals == vitals) &&
            (identical(other.examinations, examinations) ||
                other.examinations == examinations) &&
            const DeepCollectionEquality()
                .equals(other._investigations, _investigations) &&
            const DeepCollectionEquality()
                .equals(other._managements, _managements) &&
            (identical(other.provisionalDiagnosis, provisionalDiagnosis) ||
                other.provisionalDiagnosis == provisionalDiagnosis) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      cnic,
      age,
      gender,
      isAttended,
      arrivalAt,
      address,
      patientStatus,
      classification,
      triage,
      const DeepCollectionEquality().hash(_presentingComplaints),
      vitals,
      examinations,
      const DeepCollectionEquality().hash(_investigations),
      const DeepCollectionEquality().hash(_managements),
      provisionalDiagnosis,
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

abstract class _Patient implements Patient {
  const factory _Patient(
      {required final String id,
      required final String name,
      required final CNIC cnic,
      required final Duration age,
      required final Gender gender,
      required final bool isAttended,
      required final DateTime arrivalAt,
      required final Address address,
      required final PatientStatus patientStatus,
      required final Classification classification,
      required final Triage triage,
      required final List<Complaint> presentingComplaints,
      required final Vitals vitals,
      required final Examinations examinations,
      required final List<Investigation> investigations,
      required final List<Management> managements,
      required final String provisionalDiagnosis,
      required final String diagnosis}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  CNIC get cnic;
  @override
  Duration get age;
  @override
  Gender get gender;
  @override
  bool get isAttended;
  @override
  DateTime get arrivalAt;
  @override
  Address get address;
  @override
  PatientStatus get patientStatus;
  @override
  Classification get classification;
  @override
  Triage get triage;
  @override
  List<Complaint> get presentingComplaints;
  @override
  Vitals get vitals;
  @override
  Examinations get examinations;
  @override
  List<Investigation> get investigations;
  @override
  List<Management> get managements;
  @override
  String get provisionalDiagnosis;
  @override
  String get diagnosis;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Examinations _$ExaminationsFromJson(Map<String, dynamic> json) {
  return _Examinations.fromJson(json);
}

/// @nodoc
mixin _$Examinations {
  String get eye => throw _privateConstructorUsedError;
  String get ent => throw _privateConstructorUsedError;
  String get cvs => throw _privateConstructorUsedError;
  String get cns => throw _privateConstructorUsedError;
  String get pulmo => throw _privateConstructorUsedError;
  String get skin => throw _privateConstructorUsedError;
  String get gi => throw _privateConstructorUsedError;
  String get gu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExaminationsCopyWith<Examinations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExaminationsCopyWith<$Res> {
  factory $ExaminationsCopyWith(
          Examinations value, $Res Function(Examinations) then) =
      _$ExaminationsCopyWithImpl<$Res, Examinations>;
  @useResult
  $Res call(
      {String eye,
      String ent,
      String cvs,
      String cns,
      String pulmo,
      String skin,
      String gi,
      String gu});
}

/// @nodoc
class _$ExaminationsCopyWithImpl<$Res, $Val extends Examinations>
    implements $ExaminationsCopyWith<$Res> {
  _$ExaminationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eye = null,
    Object? ent = null,
    Object? cvs = null,
    Object? cns = null,
    Object? pulmo = null,
    Object? skin = null,
    Object? gi = null,
    Object? gu = null,
  }) {
    return _then(_value.copyWith(
      eye: null == eye
          ? _value.eye
          : eye // ignore: cast_nullable_to_non_nullable
              as String,
      ent: null == ent
          ? _value.ent
          : ent // ignore: cast_nullable_to_non_nullable
              as String,
      cvs: null == cvs
          ? _value.cvs
          : cvs // ignore: cast_nullable_to_non_nullable
              as String,
      cns: null == cns
          ? _value.cns
          : cns // ignore: cast_nullable_to_non_nullable
              as String,
      pulmo: null == pulmo
          ? _value.pulmo
          : pulmo // ignore: cast_nullable_to_non_nullable
              as String,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      gi: null == gi
          ? _value.gi
          : gi // ignore: cast_nullable_to_non_nullable
              as String,
      gu: null == gu
          ? _value.gu
          : gu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExaminationsImplCopyWith<$Res>
    implements $ExaminationsCopyWith<$Res> {
  factory _$$ExaminationsImplCopyWith(
          _$ExaminationsImpl value, $Res Function(_$ExaminationsImpl) then) =
      __$$ExaminationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eye,
      String ent,
      String cvs,
      String cns,
      String pulmo,
      String skin,
      String gi,
      String gu});
}

/// @nodoc
class __$$ExaminationsImplCopyWithImpl<$Res>
    extends _$ExaminationsCopyWithImpl<$Res, _$ExaminationsImpl>
    implements _$$ExaminationsImplCopyWith<$Res> {
  __$$ExaminationsImplCopyWithImpl(
      _$ExaminationsImpl _value, $Res Function(_$ExaminationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eye = null,
    Object? ent = null,
    Object? cvs = null,
    Object? cns = null,
    Object? pulmo = null,
    Object? skin = null,
    Object? gi = null,
    Object? gu = null,
  }) {
    return _then(_$ExaminationsImpl(
      eye: null == eye
          ? _value.eye
          : eye // ignore: cast_nullable_to_non_nullable
              as String,
      ent: null == ent
          ? _value.ent
          : ent // ignore: cast_nullable_to_non_nullable
              as String,
      cvs: null == cvs
          ? _value.cvs
          : cvs // ignore: cast_nullable_to_non_nullable
              as String,
      cns: null == cns
          ? _value.cns
          : cns // ignore: cast_nullable_to_non_nullable
              as String,
      pulmo: null == pulmo
          ? _value.pulmo
          : pulmo // ignore: cast_nullable_to_non_nullable
              as String,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      gi: null == gi
          ? _value.gi
          : gi // ignore: cast_nullable_to_non_nullable
              as String,
      gu: null == gu
          ? _value.gu
          : gu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExaminationsImpl implements _Examinations {
  const _$ExaminationsImpl(
      {required this.eye,
      required this.ent,
      required this.cvs,
      required this.cns,
      required this.pulmo,
      required this.skin,
      required this.gi,
      required this.gu});

  factory _$ExaminationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExaminationsImplFromJson(json);

  @override
  final String eye;
  @override
  final String ent;
  @override
  final String cvs;
  @override
  final String cns;
  @override
  final String pulmo;
  @override
  final String skin;
  @override
  final String gi;
  @override
  final String gu;

  @override
  String toString() {
    return 'Examinations(eye: $eye, ent: $ent, cvs: $cvs, cns: $cns, pulmo: $pulmo, skin: $skin, gi: $gi, gu: $gu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExaminationsImpl &&
            (identical(other.eye, eye) || other.eye == eye) &&
            (identical(other.ent, ent) || other.ent == ent) &&
            (identical(other.cvs, cvs) || other.cvs == cvs) &&
            (identical(other.cns, cns) || other.cns == cns) &&
            (identical(other.pulmo, pulmo) || other.pulmo == pulmo) &&
            (identical(other.skin, skin) || other.skin == skin) &&
            (identical(other.gi, gi) || other.gi == gi) &&
            (identical(other.gu, gu) || other.gu == gu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eye, ent, cvs, cns, pulmo, skin, gi, gu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExaminationsImplCopyWith<_$ExaminationsImpl> get copyWith =>
      __$$ExaminationsImplCopyWithImpl<_$ExaminationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExaminationsImplToJson(
      this,
    );
  }
}

abstract class _Examinations implements Examinations {
  const factory _Examinations(
      {required final String eye,
      required final String ent,
      required final String cvs,
      required final String cns,
      required final String pulmo,
      required final String skin,
      required final String gi,
      required final String gu}) = _$ExaminationsImpl;

  factory _Examinations.fromJson(Map<String, dynamic> json) =
      _$ExaminationsImpl.fromJson;

  @override
  String get eye;
  @override
  String get ent;
  @override
  String get cvs;
  @override
  String get cns;
  @override
  String get pulmo;
  @override
  String get skin;
  @override
  String get gi;
  @override
  String get gu;
  @override
  @JsonKey(ignore: true)
  _$$ExaminationsImplCopyWith<_$ExaminationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Complaint _$ComplaintFromJson(Map<String, dynamic> json) {
  return _Complaint.fromJson(json);
}

/// @nodoc
mixin _$Complaint {
  String get complaint => throw _privateConstructorUsedError;
  String get history => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplaintCopyWith<Complaint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintCopyWith<$Res> {
  factory $ComplaintCopyWith(Complaint value, $Res Function(Complaint) then) =
      _$ComplaintCopyWithImpl<$Res, Complaint>;
  @useResult
  $Res call({String complaint, String history, Duration duration});
}

/// @nodoc
class _$ComplaintCopyWithImpl<$Res, $Val extends Complaint>
    implements $ComplaintCopyWith<$Res> {
  _$ComplaintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaint = null,
    Object? history = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      complaint: null == complaint
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintImplCopyWith<$Res>
    implements $ComplaintCopyWith<$Res> {
  factory _$$ComplaintImplCopyWith(
          _$ComplaintImpl value, $Res Function(_$ComplaintImpl) then) =
      __$$ComplaintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String complaint, String history, Duration duration});
}

/// @nodoc
class __$$ComplaintImplCopyWithImpl<$Res>
    extends _$ComplaintCopyWithImpl<$Res, _$ComplaintImpl>
    implements _$$ComplaintImplCopyWith<$Res> {
  __$$ComplaintImplCopyWithImpl(
      _$ComplaintImpl _value, $Res Function(_$ComplaintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaint = null,
    Object? history = null,
    Object? duration = null,
  }) {
    return _then(_$ComplaintImpl(
      complaint: null == complaint
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplaintImpl implements _Complaint {
  const _$ComplaintImpl(
      {required this.complaint, required this.history, required this.duration});

  factory _$ComplaintImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintImplFromJson(json);

  @override
  final String complaint;
  @override
  final String history;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'Complaint(complaint: $complaint, history: $history, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintImpl &&
            (identical(other.complaint, complaint) ||
                other.complaint == complaint) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, complaint, history, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintImplCopyWith<_$ComplaintImpl> get copyWith =>
      __$$ComplaintImplCopyWithImpl<_$ComplaintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintImplToJson(
      this,
    );
  }
}

abstract class _Complaint implements Complaint {
  const factory _Complaint(
      {required final String complaint,
      required final String history,
      required final Duration duration}) = _$ComplaintImpl;

  factory _Complaint.fromJson(Map<String, dynamic> json) =
      _$ComplaintImpl.fromJson;

  @override
  String get complaint;
  @override
  String get history;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$ComplaintImplCopyWith<_$ComplaintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CNIC _$CNICFromJson(Map<String, dynamic> json) {
  return _CNIC.fromJson(json);
}

/// @nodoc
mixin _$CNIC {
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String get c => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CNICCopyWith<CNIC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CNICCopyWith<$Res> {
  factory $CNICCopyWith(CNIC value, $Res Function(CNIC) then) =
      _$CNICCopyWithImpl<$Res, CNIC>;
  @useResult
  $Res call({String a, String b, String c});
}

/// @nodoc
class _$CNICCopyWithImpl<$Res, $Val extends CNIC>
    implements $CNICCopyWith<$Res> {
  _$CNICCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CNICImplCopyWith<$Res> implements $CNICCopyWith<$Res> {
  factory _$$CNICImplCopyWith(
          _$CNICImpl value, $Res Function(_$CNICImpl) then) =
      __$$CNICImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, String b, String c});
}

/// @nodoc
class __$$CNICImplCopyWithImpl<$Res>
    extends _$CNICCopyWithImpl<$Res, _$CNICImpl>
    implements _$$CNICImplCopyWith<$Res> {
  __$$CNICImplCopyWithImpl(_$CNICImpl _value, $Res Function(_$CNICImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = null,
  }) {
    return _then(_$CNICImpl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CNICImpl implements _CNIC {
  const _$CNICImpl({required this.a, required this.b, required this.c});

  factory _$CNICImpl.fromJson(Map<String, dynamic> json) =>
      _$$CNICImplFromJson(json);

  @override
  final String a;
  @override
  final String b;
  @override
  final String c;

  @override
  String toString() {
    return 'CNIC(a: $a, b: $b, c: $c)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CNICImpl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b, c);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CNICImplCopyWith<_$CNICImpl> get copyWith =>
      __$$CNICImplCopyWithImpl<_$CNICImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CNICImplToJson(
      this,
    );
  }
}

abstract class _CNIC implements CNIC {
  const factory _CNIC(
      {required final String a,
      required final String b,
      required final String c}) = _$CNICImpl;

  factory _CNIC.fromJson(Map<String, dynamic> json) = _$CNICImpl.fromJson;

  @override
  String get a;
  @override
  String get b;
  @override
  String get c;
  @override
  @JsonKey(ignore: true)
  _$$CNICImplCopyWith<_$CNICImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get country => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String country, String province, String city, String area});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, String province, String city, String area});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
  }) {
    return _then(_$AddressImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.country,
      required this.province,
      required this.city,
      required this.area});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String country;
  @override
  final String province;
  @override
  final String city;
  @override
  final String area;

  @override
  String toString() {
    return 'Address(country: $country, province: $province, city: $city, area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, province, city, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String country,
      required final String province,
      required final String city,
      required final String area}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get country;
  @override
  String get province;
  @override
  String get city;
  @override
  String get area;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Investigation _$InvestigationFromJson(Map<String, dynamic> json) {
  return _Investigation.fromJson(json);
}

/// @nodoc
mixin _$Investigation {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

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
  $Res call({String name, String value, DateTime time});
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
    Object? name = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call({String name, String value, DateTime time});
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
    Object? name = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$InvestigationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestigationImpl implements _Investigation {
  const _$InvestigationImpl(
      {required this.name, required this.value, required this.time});

  factory _$InvestigationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationImplFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Investigation(name: $name, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationImplCopyWith<_$InvestigationImpl> get copyWith =>
      __$$InvestigationImplCopyWithImpl<_$InvestigationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationImplToJson(
      this,
    );
  }
}

abstract class _Investigation implements Investigation {
  const factory _Investigation(
      {required final String name,
      required final String value,
      required final DateTime time}) = _$InvestigationImpl;

  factory _Investigation.fromJson(Map<String, dynamic> json) =
      _$InvestigationImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$InvestigationImplCopyWith<_$InvestigationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Management _$ManagementFromJson(Map<String, dynamic> json) {
  return _Management.fromJson(json);
}

/// @nodoc
mixin _$Management {
  String get description => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagementCopyWith<Management> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagementCopyWith<$Res> {
  factory $ManagementCopyWith(
          Management value, $Res Function(Management) then) =
      _$ManagementCopyWithImpl<$Res, Management>;
  @useResult
  $Res call({String description, DateTime time});
}

/// @nodoc
class _$ManagementCopyWithImpl<$Res, $Val extends Management>
    implements $ManagementCopyWith<$Res> {
  _$ManagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManagementImplCopyWith<$Res>
    implements $ManagementCopyWith<$Res> {
  factory _$$ManagementImplCopyWith(
          _$ManagementImpl value, $Res Function(_$ManagementImpl) then) =
      __$$ManagementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, DateTime time});
}

/// @nodoc
class __$$ManagementImplCopyWithImpl<$Res>
    extends _$ManagementCopyWithImpl<$Res, _$ManagementImpl>
    implements _$$ManagementImplCopyWith<$Res> {
  __$$ManagementImplCopyWithImpl(
      _$ManagementImpl _value, $Res Function(_$ManagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? time = null,
  }) {
    return _then(_$ManagementImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagementImpl implements _Management {
  const _$ManagementImpl({required this.description, required this.time});

  factory _$ManagementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagementImplFromJson(json);

  @override
  final String description;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Management(description: $description, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagementImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagementImplCopyWith<_$ManagementImpl> get copyWith =>
      __$$ManagementImplCopyWithImpl<_$ManagementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagementImplToJson(
      this,
    );
  }
}

abstract class _Management implements Management {
  const factory _Management(
      {required final String description,
      required final DateTime time}) = _$ManagementImpl;

  factory _Management.fromJson(Map<String, dynamic> json) =
      _$ManagementImpl.fromJson;

  @override
  String get description;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$ManagementImplCopyWith<_$ManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Outcome _$OutcomeFromJson(Map<String, dynamic> json) {
  return _Outcome.fromJson(json);
}

/// @nodoc
mixin _$Outcome {
  OutcomeStatus get outcomeStatus => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomeCopyWith<Outcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeCopyWith<$Res> {
  factory $OutcomeCopyWith(Outcome value, $Res Function(Outcome) then) =
      _$OutcomeCopyWithImpl<$Res, Outcome>;
  @useResult
  $Res call({OutcomeStatus outcomeStatus, String description});
}

/// @nodoc
class _$OutcomeCopyWithImpl<$Res, $Val extends Outcome>
    implements $OutcomeCopyWith<$Res> {
  _$OutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeStatus = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      outcomeStatus: null == outcomeStatus
          ? _value.outcomeStatus
          : outcomeStatus // ignore: cast_nullable_to_non_nullable
              as OutcomeStatus,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutcomeImplCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$$OutcomeImplCopyWith(
          _$OutcomeImpl value, $Res Function(_$OutcomeImpl) then) =
      __$$OutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OutcomeStatus outcomeStatus, String description});
}

/// @nodoc
class __$$OutcomeImplCopyWithImpl<$Res>
    extends _$OutcomeCopyWithImpl<$Res, _$OutcomeImpl>
    implements _$$OutcomeImplCopyWith<$Res> {
  __$$OutcomeImplCopyWithImpl(
      _$OutcomeImpl _value, $Res Function(_$OutcomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeStatus = null,
    Object? description = null,
  }) {
    return _then(_$OutcomeImpl(
      outcomeStatus: null == outcomeStatus
          ? _value.outcomeStatus
          : outcomeStatus // ignore: cast_nullable_to_non_nullable
              as OutcomeStatus,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutcomeImpl implements _Outcome {
  const _$OutcomeImpl({required this.outcomeStatus, required this.description});

  factory _$OutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutcomeImplFromJson(json);

  @override
  final OutcomeStatus outcomeStatus;
  @override
  final String description;

  @override
  String toString() {
    return 'Outcome(outcomeStatus: $outcomeStatus, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutcomeImpl &&
            (identical(other.outcomeStatus, outcomeStatus) ||
                other.outcomeStatus == outcomeStatus) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, outcomeStatus, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      __$$OutcomeImplCopyWithImpl<_$OutcomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutcomeImplToJson(
      this,
    );
  }
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {required final OutcomeStatus outcomeStatus,
      required final String description}) = _$OutcomeImpl;

  factory _Outcome.fromJson(Map<String, dynamic> json) = _$OutcomeImpl.fromJson;

  @override
  OutcomeStatus get outcomeStatus;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vitals _$VitalsFromJson(Map<String, dynamic> json) {
  return _Vitals.fromJson(json);
}

/// @nodoc
mixin _$Vitals {
  int get systolic => throw _privateConstructorUsedError;
  int get diastolic => throw _privateConstructorUsedError;
  int get pulse => throw _privateConstructorUsedError;
  int get oxygen => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitalsCopyWith<Vitals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitalsCopyWith<$Res> {
  factory $VitalsCopyWith(Vitals value, $Res Function(Vitals) then) =
      _$VitalsCopyWithImpl<$Res, Vitals>;
  @useResult
  $Res call(
      {int systolic, int diastolic, int pulse, int oxygen, double temperature});
}

/// @nodoc
class _$VitalsCopyWithImpl<$Res, $Val extends Vitals>
    implements $VitalsCopyWith<$Res> {
  _$VitalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic = null,
    Object? diastolic = null,
    Object? pulse = null,
    Object? oxygen = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      systolic: null == systolic
          ? _value.systolic
          : systolic // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic: null == diastolic
          ? _value.diastolic
          : diastolic // ignore: cast_nullable_to_non_nullable
              as int,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as int,
      oxygen: null == oxygen
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitalsImplCopyWith<$Res> implements $VitalsCopyWith<$Res> {
  factory _$$VitalsImplCopyWith(
          _$VitalsImpl value, $Res Function(_$VitalsImpl) then) =
      __$$VitalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int systolic, int diastolic, int pulse, int oxygen, double temperature});
}

/// @nodoc
class __$$VitalsImplCopyWithImpl<$Res>
    extends _$VitalsCopyWithImpl<$Res, _$VitalsImpl>
    implements _$$VitalsImplCopyWith<$Res> {
  __$$VitalsImplCopyWithImpl(
      _$VitalsImpl _value, $Res Function(_$VitalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic = null,
    Object? diastolic = null,
    Object? pulse = null,
    Object? oxygen = null,
    Object? temperature = null,
  }) {
    return _then(_$VitalsImpl(
      systolic: null == systolic
          ? _value.systolic
          : systolic // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic: null == diastolic
          ? _value.diastolic
          : diastolic // ignore: cast_nullable_to_non_nullable
              as int,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as int,
      oxygen: null == oxygen
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitalsImpl implements _Vitals {
  const _$VitalsImpl(
      {required this.systolic,
      required this.diastolic,
      required this.pulse,
      required this.oxygen,
      required this.temperature});

  factory _$VitalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitalsImplFromJson(json);

  @override
  final int systolic;
  @override
  final int diastolic;
  @override
  final int pulse;
  @override
  final int oxygen;
  @override
  final double temperature;

  @override
  String toString() {
    return 'Vitals(systolic: $systolic, diastolic: $diastolic, pulse: $pulse, oxygen: $oxygen, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitalsImpl &&
            (identical(other.systolic, systolic) ||
                other.systolic == systolic) &&
            (identical(other.diastolic, diastolic) ||
                other.diastolic == diastolic) &&
            (identical(other.pulse, pulse) || other.pulse == pulse) &&
            (identical(other.oxygen, oxygen) || other.oxygen == oxygen) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, systolic, diastolic, pulse, oxygen, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitalsImplCopyWith<_$VitalsImpl> get copyWith =>
      __$$VitalsImplCopyWithImpl<_$VitalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitalsImplToJson(
      this,
    );
  }
}

abstract class _Vitals implements Vitals {
  const factory _Vitals(
      {required final int systolic,
      required final int diastolic,
      required final int pulse,
      required final int oxygen,
      required final double temperature}) = _$VitalsImpl;

  factory _Vitals.fromJson(Map<String, dynamic> json) = _$VitalsImpl.fromJson;

  @override
  int get systolic;
  @override
  int get diastolic;
  @override
  int get pulse;
  @override
  int get oxygen;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$VitalsImplCopyWith<_$VitalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
