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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Patients _$PatientsFromJson(Map<String, dynamic> json) {
  return _Patients.fromJson(json);
}

/// @nodoc
mixin _$Patients {
  Map<String, Patient> get patientsCache => throw _privateConstructorUsedError;

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
  $Res call({Map<String, Patient> patientsCache});
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
    Object? patientsCache = null,
  }) {
    return _then(_value.copyWith(
      patientsCache: null == patientsCache
          ? _value.patientsCache
          : patientsCache // ignore: cast_nullable_to_non_nullable
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
  $Res call({Map<String, Patient> patientsCache});
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
    Object? patientsCache = null,
  }) {
    return _then(_$PatientsImpl(
      patientsCache: null == patientsCache
          ? _value._patientsCache
          : patientsCache // ignore: cast_nullable_to_non_nullable
              as Map<String, Patient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientsImpl extends _Patients {
  const _$PatientsImpl(
      {final Map<String, Patient> patientsCache = const <String, Patient>{}})
      : _patientsCache = patientsCache,
        super._();

  factory _$PatientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientsImplFromJson(json);

  final Map<String, Patient> _patientsCache;
  @override
  @JsonKey()
  Map<String, Patient> get patientsCache {
    if (_patientsCache is EqualUnmodifiableMapView) return _patientsCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_patientsCache);
  }

  @override
  String toString() {
    return 'Patients(patientsCache: $patientsCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsImpl &&
            const DeepCollectionEquality()
                .equals(other._patientsCache, _patientsCache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_patientsCache));

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

abstract class _Patients extends Patients {
  const factory _Patients({final Map<String, Patient> patientsCache}) =
      _$PatientsImpl;
  const _Patients._() : super._();

  factory _Patients.fromJson(Map<String, dynamic> json) =
      _$PatientsImpl.fromJson;

  @override
  Map<String, Patient> get patientsCache;
  @override
  @JsonKey(ignore: true)
  _$$PatientsImplCopyWith<_$PatientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Age _$AgeFromJson(Map<String, dynamic> json) {
  return _Age.fromJson(json);
}

/// @nodoc
mixin _$Age {
  int get value => throw _privateConstructorUsedError;
  AgeUnit get ageUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeCopyWith<Age> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeCopyWith<$Res> {
  factory $AgeCopyWith(Age value, $Res Function(Age) then) =
      _$AgeCopyWithImpl<$Res, Age>;
  @useResult
  $Res call({int value, AgeUnit ageUnit});
}

/// @nodoc
class _$AgeCopyWithImpl<$Res, $Val extends Age> implements $AgeCopyWith<$Res> {
  _$AgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? ageUnit = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      ageUnit: null == ageUnit
          ? _value.ageUnit
          : ageUnit // ignore: cast_nullable_to_non_nullable
              as AgeUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgeImplCopyWith<$Res> implements $AgeCopyWith<$Res> {
  factory _$$AgeImplCopyWith(_$AgeImpl value, $Res Function(_$AgeImpl) then) =
      __$$AgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, AgeUnit ageUnit});
}

/// @nodoc
class __$$AgeImplCopyWithImpl<$Res> extends _$AgeCopyWithImpl<$Res, _$AgeImpl>
    implements _$$AgeImplCopyWith<$Res> {
  __$$AgeImplCopyWithImpl(_$AgeImpl _value, $Res Function(_$AgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? ageUnit = null,
  }) {
    return _then(_$AgeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      ageUnit: null == ageUnit
          ? _value.ageUnit
          : ageUnit // ignore: cast_nullable_to_non_nullable
              as AgeUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgeImpl implements _Age {
  const _$AgeImpl({this.value = 0, this.ageUnit = AgeUnit.years});

  factory _$AgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeImplFromJson(json);

  @override
  @JsonKey()
  final int value;
  @override
  @JsonKey()
  final AgeUnit ageUnit;

  @override
  String toString() {
    return 'Age(value: $value, ageUnit: $ageUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.ageUnit, ageUnit) || other.ageUnit == ageUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, ageUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      __$$AgeImplCopyWithImpl<_$AgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeImplToJson(
      this,
    );
  }
}

abstract class _Age implements Age {
  const factory _Age({final int value, final AgeUnit ageUnit}) = _$AgeImpl;

  factory _Age.fromJson(Map<String, dynamic> json) = _$AgeImpl.fromJson;

  @override
  int get value;
  @override
  AgeUnit get ageUnit;
  @override
  @JsonKey(ignore: true)
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Age get age => throw _privateConstructorUsedError;
  DateTime? get timeOfPresentation => throw _privateConstructorUsedError;
  PatientType get patientType => throw _privateConstructorUsedError;
  List<String> get complaintNotes => throw _privateConstructorUsedError;
  List<String> get firstAidNotes => throw _privateConstructorUsedError;
  List<String> get diagnositicNotes => throw _privateConstructorUsedError;
  List<String> get furtherPlans => throw _privateConstructorUsedError;
  Pictures get pictures => throw _privateConstructorUsedError;
  bool get attended => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Patient value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Patient value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Patient value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
      Age age,
      DateTime? timeOfPresentation,
      PatientType patientType,
      List<String> complaintNotes,
      List<String> firstAidNotes,
      List<String> diagnositicNotes,
      List<String> furtherPlans,
      Pictures pictures,
      bool attended,
      bool editing});

  $AgeCopyWith<$Res> get age;
  $PicturesCopyWith<$Res> get pictures;
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
    Object? timeOfPresentation = freezed,
    Object? patientType = null,
    Object? complaintNotes = null,
    Object? firstAidNotes = null,
    Object? diagnositicNotes = null,
    Object? furtherPlans = null,
    Object? pictures = null,
    Object? attended = null,
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
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age,
      timeOfPresentation: freezed == timeOfPresentation
          ? _value.timeOfPresentation
          : timeOfPresentation // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      patientType: null == patientType
          ? _value.patientType
          : patientType // ignore: cast_nullable_to_non_nullable
              as PatientType,
      complaintNotes: null == complaintNotes
          ? _value.complaintNotes
          : complaintNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstAidNotes: null == firstAidNotes
          ? _value.firstAidNotes
          : firstAidNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diagnositicNotes: null == diagnositicNotes
          ? _value.diagnositicNotes
          : diagnositicNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      furtherPlans: null == furtherPlans
          ? _value.furtherPlans
          : furtherPlans // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures,
      attended: null == attended
          ? _value.attended
          : attended // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res> get age {
    return $AgeCopyWith<$Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PicturesCopyWith<$Res> get pictures {
    return $PicturesCopyWith<$Res>(_value.pictures, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
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
      Age age,
      DateTime? timeOfPresentation,
      PatientType patientType,
      List<String> complaintNotes,
      List<String> firstAidNotes,
      List<String> diagnositicNotes,
      List<String> furtherPlans,
      Pictures pictures,
      bool attended,
      bool editing});

  @override
  $AgeCopyWith<$Res> get age;
  @override
  $PicturesCopyWith<$Res> get pictures;
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
    Object? timeOfPresentation = freezed,
    Object? patientType = null,
    Object? complaintNotes = null,
    Object? firstAidNotes = null,
    Object? diagnositicNotes = null,
    Object? furtherPlans = null,
    Object? pictures = null,
    Object? attended = null,
    Object? editing = null,
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
              as Age,
      timeOfPresentation: freezed == timeOfPresentation
          ? _value.timeOfPresentation
          : timeOfPresentation // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      patientType: null == patientType
          ? _value.patientType
          : patientType // ignore: cast_nullable_to_non_nullable
              as PatientType,
      complaintNotes: null == complaintNotes
          ? _value._complaintNotes
          : complaintNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstAidNotes: null == firstAidNotes
          ? _value._firstAidNotes
          : firstAidNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diagnositicNotes: null == diagnositicNotes
          ? _value._diagnositicNotes
          : diagnositicNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      furtherPlans: null == furtherPlans
          ? _value._furtherPlans
          : furtherPlans // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures,
      attended: null == attended
          ? _value.attended
          : attended // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl extends _Patient {
  const _$PatientImpl(
      {this.id = '',
      this.name = '',
      this.age = const Age(),
      required this.timeOfPresentation,
      this.patientType = PatientType.medical,
      final List<String> complaintNotes = const [],
      final List<String> firstAidNotes = const [],
      final List<String> diagnositicNotes = const [],
      final List<String> furtherPlans = const [],
      this.pictures = const Pictures(),
      this.attended = false,
      this.editing = false})
      : _complaintNotes = complaintNotes,
        _firstAidNotes = firstAidNotes,
        _diagnositicNotes = diagnositicNotes,
        _furtherPlans = furtherPlans,
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
  final Age age;
  @override
  final DateTime? timeOfPresentation;
  @override
  @JsonKey()
  final PatientType patientType;
  final List<String> _complaintNotes;
  @override
  @JsonKey()
  List<String> get complaintNotes {
    if (_complaintNotes is EqualUnmodifiableListView) return _complaintNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complaintNotes);
  }

  final List<String> _firstAidNotes;
  @override
  @JsonKey()
  List<String> get firstAidNotes {
    if (_firstAidNotes is EqualUnmodifiableListView) return _firstAidNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_firstAidNotes);
  }

  final List<String> _diagnositicNotes;
  @override
  @JsonKey()
  List<String> get diagnositicNotes {
    if (_diagnositicNotes is EqualUnmodifiableListView)
      return _diagnositicNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diagnositicNotes);
  }

  final List<String> _furtherPlans;
  @override
  @JsonKey()
  List<String> get furtherPlans {
    if (_furtherPlans is EqualUnmodifiableListView) return _furtherPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_furtherPlans);
  }

  @override
  @JsonKey()
  final Pictures pictures;
  @override
  @JsonKey()
  final bool attended;
  @override
  @JsonKey()
  final bool editing;

  @override
  String toString() {
    return 'Patient.raw(id: $id, name: $name, age: $age, timeOfPresentation: $timeOfPresentation, patientType: $patientType, complaintNotes: $complaintNotes, firstAidNotes: $firstAidNotes, diagnositicNotes: $diagnositicNotes, furtherPlans: $furtherPlans, pictures: $pictures, attended: $attended, editing: $editing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.timeOfPresentation, timeOfPresentation) ||
                other.timeOfPresentation == timeOfPresentation) &&
            (identical(other.patientType, patientType) ||
                other.patientType == patientType) &&
            const DeepCollectionEquality()
                .equals(other._complaintNotes, _complaintNotes) &&
            const DeepCollectionEquality()
                .equals(other._firstAidNotes, _firstAidNotes) &&
            const DeepCollectionEquality()
                .equals(other._diagnositicNotes, _diagnositicNotes) &&
            const DeepCollectionEquality()
                .equals(other._furtherPlans, _furtherPlans) &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures) &&
            (identical(other.attended, attended) ||
                other.attended == attended) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      age,
      timeOfPresentation,
      patientType,
      const DeepCollectionEquality().hash(_complaintNotes),
      const DeepCollectionEquality().hash(_firstAidNotes),
      const DeepCollectionEquality().hash(_diagnositicNotes),
      const DeepCollectionEquality().hash(_furtherPlans),
      pictures,
      attended,
      editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)
        raw,
  }) {
    return raw(
        id,
        name,
        age,
        timeOfPresentation,
        patientType,
        complaintNotes,
        firstAidNotes,
        diagnositicNotes,
        furtherPlans,
        pictures,
        attended,
        editing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)?
        raw,
  }) {
    return raw?.call(
        id,
        name,
        age,
        timeOfPresentation,
        patientType,
        complaintNotes,
        firstAidNotes,
        diagnositicNotes,
        furtherPlans,
        pictures,
        attended,
        editing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            Age age,
            DateTime? timeOfPresentation,
            PatientType patientType,
            List<String> complaintNotes,
            List<String> firstAidNotes,
            List<String> diagnositicNotes,
            List<String> furtherPlans,
            Pictures pictures,
            bool attended,
            bool editing)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(
          id,
          name,
          age,
          timeOfPresentation,
          patientType,
          complaintNotes,
          firstAidNotes,
          diagnositicNotes,
          furtherPlans,
          pictures,
          attended,
          editing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Patient value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Patient value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Patient value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

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
      final Age age,
      required final DateTime? timeOfPresentation,
      final PatientType patientType,
      final List<String> complaintNotes,
      final List<String> firstAidNotes,
      final List<String> diagnositicNotes,
      final List<String> furtherPlans,
      final Pictures pictures,
      final bool attended,
      final bool editing}) = _$PatientImpl;
  const _Patient._() : super._();

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Age get age;
  @override
  DateTime? get timeOfPresentation;
  @override
  PatientType get patientType;
  @override
  List<String> get complaintNotes;
  @override
  List<String> get firstAidNotes;
  @override
  List<String> get diagnositicNotes;
  @override
  List<String> get furtherPlans;
  @override
  Pictures get pictures;
  @override
  bool get attended;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pictures _$PicturesFromJson(Map<String, dynamic> json) {
  return _Pictures.fromJson(json);
}

/// @nodoc
mixin _$Pictures {
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PicturesCopyWith<Pictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicturesCopyWith<$Res> {
  factory $PicturesCopyWith(Pictures value, $Res Function(Pictures) then) =
      _$PicturesCopyWithImpl<$Res, Pictures>;
  @useResult
  $Res call({String details});
}

/// @nodoc
class _$PicturesCopyWithImpl<$Res, $Val extends Pictures>
    implements $PicturesCopyWith<$Res> {
  _$PicturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicturesImplCopyWith<$Res>
    implements $PicturesCopyWith<$Res> {
  factory _$$PicturesImplCopyWith(
          _$PicturesImpl value, $Res Function(_$PicturesImpl) then) =
      __$$PicturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String details});
}

/// @nodoc
class __$$PicturesImplCopyWithImpl<$Res>
    extends _$PicturesCopyWithImpl<$Res, _$PicturesImpl>
    implements _$$PicturesImplCopyWith<$Res> {
  __$$PicturesImplCopyWithImpl(
      _$PicturesImpl _value, $Res Function(_$PicturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$PicturesImpl(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PicturesImpl implements _Pictures {
  const _$PicturesImpl({this.details = ''});

  factory _$PicturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicturesImplFromJson(json);

  @override
  @JsonKey()
  final String details;

  @override
  String toString() {
    return 'Pictures(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicturesImpl &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PicturesImplCopyWith<_$PicturesImpl> get copyWith =>
      __$$PicturesImplCopyWithImpl<_$PicturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicturesImplToJson(
      this,
    );
  }
}

abstract class _Pictures implements Pictures {
  const factory _Pictures({final String details}) = _$PicturesImpl;

  factory _Pictures.fromJson(Map<String, dynamic> json) =
      _$PicturesImpl.fromJson;

  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$PicturesImplCopyWith<_$PicturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
