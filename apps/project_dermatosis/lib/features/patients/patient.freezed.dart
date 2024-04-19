// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

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
  Gender get gender => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  List<Lesion> get lesions => throw _privateConstructorUsedError;
  Contact get contact => throw _privateConstructorUsedError;
  Diagnoses get diagnoses => throw _privateConstructorUsedError;
  List<Imagery> get pictures => throw _privateConstructorUsedError;

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
      Gender gender,
      bool editing,
      Address address,
      DateTime dateOfBirth,
      List<Lesion> lesions,
      Contact contact,
      Diagnoses diagnoses,
      List<Imagery> pictures});

  $AddressCopyWith<$Res> get address;
  $ContactCopyWith<$Res> get contact;
  $DiagnosesCopyWith<$Res> get diagnoses;
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
    Object? gender = null,
    Object? editing = null,
    Object? address = null,
    Object? dateOfBirth = null,
    Object? lesions = null,
    Object? contact = null,
    Object? diagnoses = null,
    Object? pictures = null,
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
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lesions: null == lesions
          ? _value.lesions
          : lesions // ignore: cast_nullable_to_non_nullable
              as List<Lesion>,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      diagnoses: null == diagnoses
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as Diagnoses,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Imagery>,
    ) as $Val);
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
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiagnosesCopyWith<$Res> get diagnoses {
    return $DiagnosesCopyWith<$Res>(_value.diagnoses, (value) {
      return _then(_value.copyWith(diagnoses: value) as $Val);
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
      Gender gender,
      bool editing,
      Address address,
      DateTime dateOfBirth,
      List<Lesion> lesions,
      Contact contact,
      Diagnoses diagnoses,
      List<Imagery> pictures});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $ContactCopyWith<$Res> get contact;
  @override
  $DiagnosesCopyWith<$Res> get diagnoses;
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
    Object? gender = null,
    Object? editing = null,
    Object? address = null,
    Object? dateOfBirth = null,
    Object? lesions = null,
    Object? contact = null,
    Object? diagnoses = null,
    Object? pictures = null,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lesions: null == lesions
          ? _value._lesions
          : lesions // ignore: cast_nullable_to_non_nullable
              as List<Lesion>,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      diagnoses: null == diagnoses
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as Diagnoses,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Imagery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl extends _Patient with DiagnosticableTreeMixin {
  const _$PatientImpl(
      {this.id = '',
      this.name = '',
      this.gender = Gender.male,
      this.editing = false,
      this.address = const Address(),
      required this.dateOfBirth,
      final List<Lesion> lesions = const [],
      this.contact = const Contact(),
      this.diagnoses = const Diagnoses(),
      final List<Imagery> pictures = const []})
      : _lesions = lesions,
        _pictures = pictures,
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
  final Gender gender;
  @override
  @JsonKey()
  final bool editing;
  @override
  @JsonKey()
  final Address address;
  @override
  final DateTime dateOfBirth;
  final List<Lesion> _lesions;
  @override
  @JsonKey()
  List<Lesion> get lesions {
    if (_lesions is EqualUnmodifiableListView) return _lesions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lesions);
  }

  @override
  @JsonKey()
  final Contact contact;
  @override
  @JsonKey()
  final Diagnoses diagnoses;
  final List<Imagery> _pictures;
  @override
  @JsonKey()
  List<Imagery> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patient(id: $id, name: $name, gender: $gender, editing: $editing, address: $address, dateOfBirth: $dateOfBirth, lesions: $lesions, contact: $contact, diagnoses: $diagnoses, pictures: $pictures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patient'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('lesions', lesions))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('diagnoses', diagnoses))
      ..add(DiagnosticsProperty('pictures', pictures));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other._lesions, _lesions) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.diagnoses, diagnoses) ||
                other.diagnoses == diagnoses) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      gender,
      editing,
      address,
      dateOfBirth,
      const DeepCollectionEquality().hash(_lesions),
      contact,
      diagnoses,
      const DeepCollectionEquality().hash(_pictures));

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
      final Gender gender,
      final bool editing,
      final Address address,
      required final DateTime dateOfBirth,
      final List<Lesion> lesions,
      final Contact contact,
      final Diagnoses diagnoses,
      final List<Imagery> pictures}) = _$PatientImpl;
  const _Patient._() : super._();

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Gender get gender;
  @override
  bool get editing;
  @override
  Address get address;
  @override
  DateTime get dateOfBirth;
  @override
  List<Lesion> get lesions;
  @override
  Contact get contact;
  @override
  Diagnoses get diagnoses;
  @override
  List<Imagery> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Diagnoses _$DiagnosesFromJson(Map<String, dynamic> json) {
  return _Diagnoses.fromJson(json);
}

/// @nodoc
mixin _$Diagnoses {
  String get diagnosis => throw _privateConstructorUsedError;
  List<String> get provisionalDiagnoses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosesCopyWith<Diagnoses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosesCopyWith<$Res> {
  factory $DiagnosesCopyWith(Diagnoses value, $Res Function(Diagnoses) then) =
      _$DiagnosesCopyWithImpl<$Res, Diagnoses>;
  @useResult
  $Res call({String diagnosis, List<String> provisionalDiagnoses});
}

/// @nodoc
class _$DiagnosesCopyWithImpl<$Res, $Val extends Diagnoses>
    implements $DiagnosesCopyWith<$Res> {
  _$DiagnosesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diagnosis = null,
    Object? provisionalDiagnoses = null,
  }) {
    return _then(_value.copyWith(
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalDiagnoses: null == provisionalDiagnoses
          ? _value.provisionalDiagnoses
          : provisionalDiagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosesImplCopyWith<$Res>
    implements $DiagnosesCopyWith<$Res> {
  factory _$$DiagnosesImplCopyWith(
          _$DiagnosesImpl value, $Res Function(_$DiagnosesImpl) then) =
      __$$DiagnosesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String diagnosis, List<String> provisionalDiagnoses});
}

/// @nodoc
class __$$DiagnosesImplCopyWithImpl<$Res>
    extends _$DiagnosesCopyWithImpl<$Res, _$DiagnosesImpl>
    implements _$$DiagnosesImplCopyWith<$Res> {
  __$$DiagnosesImplCopyWithImpl(
      _$DiagnosesImpl _value, $Res Function(_$DiagnosesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diagnosis = null,
    Object? provisionalDiagnoses = null,
  }) {
    return _then(_$DiagnosesImpl(
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalDiagnoses: null == provisionalDiagnoses
          ? _value._provisionalDiagnoses
          : provisionalDiagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosesImpl extends _Diagnoses with DiagnosticableTreeMixin {
  const _$DiagnosesImpl(
      {this.diagnosis = '', final List<String> provisionalDiagnoses = const []})
      : _provisionalDiagnoses = provisionalDiagnoses,
        super._();

  factory _$DiagnosesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosesImplFromJson(json);

  @override
  @JsonKey()
  final String diagnosis;
  final List<String> _provisionalDiagnoses;
  @override
  @JsonKey()
  List<String> get provisionalDiagnoses {
    if (_provisionalDiagnoses is EqualUnmodifiableListView)
      return _provisionalDiagnoses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provisionalDiagnoses);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Diagnoses(diagnosis: $diagnosis, provisionalDiagnoses: $provisionalDiagnoses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Diagnoses'))
      ..add(DiagnosticsProperty('diagnosis', diagnosis))
      ..add(DiagnosticsProperty('provisionalDiagnoses', provisionalDiagnoses));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosesImpl &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            const DeepCollectionEquality()
                .equals(other._provisionalDiagnoses, _provisionalDiagnoses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, diagnosis,
      const DeepCollectionEquality().hash(_provisionalDiagnoses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosesImplCopyWith<_$DiagnosesImpl> get copyWith =>
      __$$DiagnosesImplCopyWithImpl<_$DiagnosesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosesImplToJson(
      this,
    );
  }
}

abstract class _Diagnoses extends Diagnoses {
  const factory _Diagnoses(
      {final String diagnosis,
      final List<String> provisionalDiagnoses}) = _$DiagnosesImpl;
  const _Diagnoses._() : super._();

  factory _Diagnoses.fromJson(Map<String, dynamic> json) =
      _$DiagnosesImpl.fromJson;

  @override
  String get diagnosis;
  @override
  List<String> get provisionalDiagnoses;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosesImplCopyWith<_$DiagnosesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lesion _$LesionFromJson(Map<String, dynamic> json) {
  return _Lesion.fromJson(json);
}

/// @nodoc
mixin _$Lesion {
  Site get site => throw _privateConstructorUsedError;
  Patterns get patterns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LesionCopyWith<Lesion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LesionCopyWith<$Res> {
  factory $LesionCopyWith(Lesion value, $Res Function(Lesion) then) =
      _$LesionCopyWithImpl<$Res, Lesion>;
  @useResult
  $Res call({Site site, Patterns patterns});

  $PatternsCopyWith<$Res> get patterns;
}

/// @nodoc
class _$LesionCopyWithImpl<$Res, $Val extends Lesion>
    implements $LesionCopyWith<$Res> {
  _$LesionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
    Object? patterns = null,
  }) {
    return _then(_value.copyWith(
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site,
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as Patterns,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatternsCopyWith<$Res> get patterns {
    return $PatternsCopyWith<$Res>(_value.patterns, (value) {
      return _then(_value.copyWith(patterns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LesionImplCopyWith<$Res> implements $LesionCopyWith<$Res> {
  factory _$$LesionImplCopyWith(
          _$LesionImpl value, $Res Function(_$LesionImpl) then) =
      __$$LesionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Site site, Patterns patterns});

  @override
  $PatternsCopyWith<$Res> get patterns;
}

/// @nodoc
class __$$LesionImplCopyWithImpl<$Res>
    extends _$LesionCopyWithImpl<$Res, _$LesionImpl>
    implements _$$LesionImplCopyWith<$Res> {
  __$$LesionImplCopyWithImpl(
      _$LesionImpl _value, $Res Function(_$LesionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
    Object? patterns = null,
  }) {
    return _then(_$LesionImpl(
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site,
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as Patterns,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LesionImpl extends _Lesion with DiagnosticableTreeMixin {
  const _$LesionImpl({this.site = Site.arms, this.patterns = const Patterns()})
      : super._();

  factory _$LesionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LesionImplFromJson(json);

  @override
  @JsonKey()
  final Site site;
  @override
  @JsonKey()
  final Patterns patterns;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lesion(site: $site, patterns: $patterns)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lesion'))
      ..add(DiagnosticsProperty('site', site))
      ..add(DiagnosticsProperty('patterns', patterns));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LesionImpl &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.patterns, patterns) ||
                other.patterns == patterns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, site, patterns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LesionImplCopyWith<_$LesionImpl> get copyWith =>
      __$$LesionImplCopyWithImpl<_$LesionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LesionImplToJson(
      this,
    );
  }
}

abstract class _Lesion extends Lesion {
  const factory _Lesion({final Site site, final Patterns patterns}) =
      _$LesionImpl;
  const _Lesion._() : super._();

  factory _Lesion.fromJson(Map<String, dynamic> json) = _$LesionImpl.fromJson;

  @override
  Site get site;
  @override
  Patterns get patterns;
  @override
  @JsonKey(ignore: true)
  _$$LesionImplCopyWith<_$LesionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patterns _$PatternsFromJson(Map<String, dynamic> json) {
  return _Patterns.fromJson(json);
}

/// @nodoc
mixin _$Patterns {
  bool get localizedOrGeneralized => throw _privateConstructorUsedError;
  bool get unilateralOrBilateral => throw _privateConstructorUsedError;
  bool get symmetricalOrAssymetrical => throw _privateConstructorUsedError;
  bool get truncalOrAcral => throw _privateConstructorUsedError;
  bool get flexorOrExtensor => throw _privateConstructorUsedError;
  bool get exposedOrCovered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatternsCopyWith<Patterns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternsCopyWith<$Res> {
  factory $PatternsCopyWith(Patterns value, $Res Function(Patterns) then) =
      _$PatternsCopyWithImpl<$Res, Patterns>;
  @useResult
  $Res call(
      {bool localizedOrGeneralized,
      bool unilateralOrBilateral,
      bool symmetricalOrAssymetrical,
      bool truncalOrAcral,
      bool flexorOrExtensor,
      bool exposedOrCovered});
}

/// @nodoc
class _$PatternsCopyWithImpl<$Res, $Val extends Patterns>
    implements $PatternsCopyWith<$Res> {
  _$PatternsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedOrGeneralized = null,
    Object? unilateralOrBilateral = null,
    Object? symmetricalOrAssymetrical = null,
    Object? truncalOrAcral = null,
    Object? flexorOrExtensor = null,
    Object? exposedOrCovered = null,
  }) {
    return _then(_value.copyWith(
      localizedOrGeneralized: null == localizedOrGeneralized
          ? _value.localizedOrGeneralized
          : localizedOrGeneralized // ignore: cast_nullable_to_non_nullable
              as bool,
      unilateralOrBilateral: null == unilateralOrBilateral
          ? _value.unilateralOrBilateral
          : unilateralOrBilateral // ignore: cast_nullable_to_non_nullable
              as bool,
      symmetricalOrAssymetrical: null == symmetricalOrAssymetrical
          ? _value.symmetricalOrAssymetrical
          : symmetricalOrAssymetrical // ignore: cast_nullable_to_non_nullable
              as bool,
      truncalOrAcral: null == truncalOrAcral
          ? _value.truncalOrAcral
          : truncalOrAcral // ignore: cast_nullable_to_non_nullable
              as bool,
      flexorOrExtensor: null == flexorOrExtensor
          ? _value.flexorOrExtensor
          : flexorOrExtensor // ignore: cast_nullable_to_non_nullable
              as bool,
      exposedOrCovered: null == exposedOrCovered
          ? _value.exposedOrCovered
          : exposedOrCovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatternsImplCopyWith<$Res>
    implements $PatternsCopyWith<$Res> {
  factory _$$PatternsImplCopyWith(
          _$PatternsImpl value, $Res Function(_$PatternsImpl) then) =
      __$$PatternsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool localizedOrGeneralized,
      bool unilateralOrBilateral,
      bool symmetricalOrAssymetrical,
      bool truncalOrAcral,
      bool flexorOrExtensor,
      bool exposedOrCovered});
}

/// @nodoc
class __$$PatternsImplCopyWithImpl<$Res>
    extends _$PatternsCopyWithImpl<$Res, _$PatternsImpl>
    implements _$$PatternsImplCopyWith<$Res> {
  __$$PatternsImplCopyWithImpl(
      _$PatternsImpl _value, $Res Function(_$PatternsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedOrGeneralized = null,
    Object? unilateralOrBilateral = null,
    Object? symmetricalOrAssymetrical = null,
    Object? truncalOrAcral = null,
    Object? flexorOrExtensor = null,
    Object? exposedOrCovered = null,
  }) {
    return _then(_$PatternsImpl(
      localizedOrGeneralized: null == localizedOrGeneralized
          ? _value.localizedOrGeneralized
          : localizedOrGeneralized // ignore: cast_nullable_to_non_nullable
              as bool,
      unilateralOrBilateral: null == unilateralOrBilateral
          ? _value.unilateralOrBilateral
          : unilateralOrBilateral // ignore: cast_nullable_to_non_nullable
              as bool,
      symmetricalOrAssymetrical: null == symmetricalOrAssymetrical
          ? _value.symmetricalOrAssymetrical
          : symmetricalOrAssymetrical // ignore: cast_nullable_to_non_nullable
              as bool,
      truncalOrAcral: null == truncalOrAcral
          ? _value.truncalOrAcral
          : truncalOrAcral // ignore: cast_nullable_to_non_nullable
              as bool,
      flexorOrExtensor: null == flexorOrExtensor
          ? _value.flexorOrExtensor
          : flexorOrExtensor // ignore: cast_nullable_to_non_nullable
              as bool,
      exposedOrCovered: null == exposedOrCovered
          ? _value.exposedOrCovered
          : exposedOrCovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatternsImpl extends _Patterns with DiagnosticableTreeMixin {
  const _$PatternsImpl(
      {this.localizedOrGeneralized = false,
      this.unilateralOrBilateral = false,
      this.symmetricalOrAssymetrical = false,
      this.truncalOrAcral = false,
      this.flexorOrExtensor = false,
      this.exposedOrCovered = false})
      : super._();

  factory _$PatternsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatternsImplFromJson(json);

  @override
  @JsonKey()
  final bool localizedOrGeneralized;
  @override
  @JsonKey()
  final bool unilateralOrBilateral;
  @override
  @JsonKey()
  final bool symmetricalOrAssymetrical;
  @override
  @JsonKey()
  final bool truncalOrAcral;
  @override
  @JsonKey()
  final bool flexorOrExtensor;
  @override
  @JsonKey()
  final bool exposedOrCovered;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patterns(localizedOrGeneralized: $localizedOrGeneralized, unilateralOrBilateral: $unilateralOrBilateral, symmetricalOrAssymetrical: $symmetricalOrAssymetrical, truncalOrAcral: $truncalOrAcral, flexorOrExtensor: $flexorOrExtensor, exposedOrCovered: $exposedOrCovered)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patterns'))
      ..add(
          DiagnosticsProperty('localizedOrGeneralized', localizedOrGeneralized))
      ..add(DiagnosticsProperty('unilateralOrBilateral', unilateralOrBilateral))
      ..add(DiagnosticsProperty(
          'symmetricalOrAssymetrical', symmetricalOrAssymetrical))
      ..add(DiagnosticsProperty('truncalOrAcral', truncalOrAcral))
      ..add(DiagnosticsProperty('flexorOrExtensor', flexorOrExtensor))
      ..add(DiagnosticsProperty('exposedOrCovered', exposedOrCovered));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatternsImpl &&
            (identical(other.localizedOrGeneralized, localizedOrGeneralized) ||
                other.localizedOrGeneralized == localizedOrGeneralized) &&
            (identical(other.unilateralOrBilateral, unilateralOrBilateral) ||
                other.unilateralOrBilateral == unilateralOrBilateral) &&
            (identical(other.symmetricalOrAssymetrical,
                    symmetricalOrAssymetrical) ||
                other.symmetricalOrAssymetrical == symmetricalOrAssymetrical) &&
            (identical(other.truncalOrAcral, truncalOrAcral) ||
                other.truncalOrAcral == truncalOrAcral) &&
            (identical(other.flexorOrExtensor, flexorOrExtensor) ||
                other.flexorOrExtensor == flexorOrExtensor) &&
            (identical(other.exposedOrCovered, exposedOrCovered) ||
                other.exposedOrCovered == exposedOrCovered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      localizedOrGeneralized,
      unilateralOrBilateral,
      symmetricalOrAssymetrical,
      truncalOrAcral,
      flexorOrExtensor,
      exposedOrCovered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatternsImplCopyWith<_$PatternsImpl> get copyWith =>
      __$$PatternsImplCopyWithImpl<_$PatternsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatternsImplToJson(
      this,
    );
  }
}

abstract class _Patterns extends Patterns {
  const factory _Patterns(
      {final bool localizedOrGeneralized,
      final bool unilateralOrBilateral,
      final bool symmetricalOrAssymetrical,
      final bool truncalOrAcral,
      final bool flexorOrExtensor,
      final bool exposedOrCovered}) = _$PatternsImpl;
  const _Patterns._() : super._();

  factory _Patterns.fromJson(Map<String, dynamic> json) =
      _$PatternsImpl.fromJson;

  @override
  bool get localizedOrGeneralized;
  @override
  bool get unilateralOrBilateral;
  @override
  bool get symmetricalOrAssymetrical;
  @override
  bool get truncalOrAcral;
  @override
  bool get flexorOrExtensor;
  @override
  bool get exposedOrCovered;
  @override
  @JsonKey(ignore: true)
  _$$PatternsImplCopyWith<_$PatternsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String get countryCode => throw _privateConstructorUsedError;
  String get mnp => throw _privateConstructorUsedError;
  String get phoneCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String countryCode, String mnp, String phoneCode});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? mnp = null,
    Object? phoneCode = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mnp: null == mnp
          ? _value.mnp
          : mnp // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryCode, String mnp, String phoneCode});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? mnp = null,
    Object? phoneCode = null,
  }) {
    return _then(_$ContactImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mnp: null == mnp
          ? _value.mnp
          : mnp // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl extends _Contact with DiagnosticableTreeMixin {
  const _$ContactImpl(
      {this.countryCode = '', this.mnp = '', this.phoneCode = ''})
      : super._();

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  @JsonKey()
  final String countryCode;
  @override
  @JsonKey()
  final String mnp;
  @override
  @JsonKey()
  final String phoneCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Contact(countryCode: $countryCode, mnp: $mnp, phoneCode: $phoneCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Contact'))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('mnp', mnp))
      ..add(DiagnosticsProperty('phoneCode', phoneCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mnp, mnp) || other.mnp == mnp) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, mnp, phoneCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact extends Contact {
  const factory _Contact(
      {final String countryCode,
      final String mnp,
      final String phoneCode}) = _$ContactImpl;
  const _Contact._() : super._();

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String get countryCode;
  @override
  String get mnp;
  @override
  String get phoneCode;
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get town => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String town, String city, String province, String country});
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
    Object? town = null,
    Object? city = null,
    Object? province = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
  $Res call({String town, String city, String province, String country});
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
    Object? town = null,
    Object? city = null,
    Object? province = null,
    Object? country = null,
  }) {
    return _then(_$AddressImpl(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl extends _Address with DiagnosticableTreeMixin {
  const _$AddressImpl(
      {this.town = '', this.city = '', this.province = '', this.country = ''})
      : super._();

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey()
  final String town;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String province;
  @override
  @JsonKey()
  final String country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(town: $town, city: $city, province: $province, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('town', town))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, town, city, province, country);

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

abstract class _Address extends Address {
  const factory _Address(
      {final String town,
      final String city,
      final String province,
      final String country}) = _$AddressImpl;
  const _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get town;
  @override
  String get city;
  @override
  String get province;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
