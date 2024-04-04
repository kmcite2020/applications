// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Topics _$TopicsFromJson(Map<String, dynamic> json) {
  return _Topics.fromJson(json);
}

/// @nodoc
mixin _$Topics {
  Map<String, Topic> get topics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicsCopyWith<Topics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsCopyWith<$Res> {
  factory $TopicsCopyWith(Topics value, $Res Function(Topics) then) =
      _$TopicsCopyWithImpl<$Res, Topics>;
  @useResult
  $Res call({Map<String, Topic> topics});
}

/// @nodoc
class _$TopicsCopyWithImpl<$Res, $Val extends Topics>
    implements $TopicsCopyWith<$Res> {
  _$TopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as Map<String, Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicsImplCopyWith<$Res> implements $TopicsCopyWith<$Res> {
  factory _$$TopicsImplCopyWith(
          _$TopicsImpl value, $Res Function(_$TopicsImpl) then) =
      __$$TopicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Topic> topics});
}

/// @nodoc
class __$$TopicsImplCopyWithImpl<$Res>
    extends _$TopicsCopyWithImpl<$Res, _$TopicsImpl>
    implements _$$TopicsImplCopyWith<$Res> {
  __$$TopicsImplCopyWithImpl(
      _$TopicsImpl _value, $Res Function(_$TopicsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$TopicsImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as Map<String, Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicsImpl implements _Topics {
  _$TopicsImpl({required final Map<String, Topic> topics}) : _topics = topics;

  factory _$TopicsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicsImplFromJson(json);

  final Map<String, Topic> _topics;
  @override
  Map<String, Topic> get topics {
    if (_topics is EqualUnmodifiableMapView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_topics);
  }

  @override
  String toString() {
    return 'Topics(topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsImplCopyWith<_$TopicsImpl> get copyWith =>
      __$$TopicsImplCopyWithImpl<_$TopicsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicsImplToJson(
      this,
    );
  }
}

abstract class _Topics implements Topics {
  factory _Topics({required final Map<String, Topic> topics}) = _$TopicsImpl;

  factory _Topics.fromJson(Map<String, dynamic> json) = _$TopicsImpl.fromJson;

  @override
  Map<String, Topic> get topics;
  @override
  @JsonKey(ignore: true)
  _$$TopicsImplCopyWith<_$TopicsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  Chapter get chapter => throw _privateConstructorUsedError;
  Diagnosis get diagnosis => throw _privateConstructorUsedError;
  List<String> get riskFactors => throw _privateConstructorUsedError;
  List<String> get causes => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Content> get descriptions => throw _privateConstructorUsedError;
  Signs get signs => throw _privateConstructorUsedError;
  String get definition => throw _privateConstructorUsedError;
  String get epidemiology => throw _privateConstructorUsedError;
  List<String> get symptoms => throw _privateConstructorUsedError;
  List<String> get complications => throw _privateConstructorUsedError;
  List<String> get investigations => throw _privateConstructorUsedError;
  List<Management> get emergencyManagement =>
      throw _privateConstructorUsedError;
  List<Management> get homeManagement => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String id,
      Chapter chapter,
      Diagnosis diagnosis,
      List<String> riskFactors,
      List<String> causes,
      String name,
      List<Content> descriptions,
      Signs signs,
      String definition,
      String epidemiology,
      List<String> symptoms,
      List<String> complications,
      List<String> investigations,
      List<Management> emergencyManagement,
      List<Management> homeManagement,
      bool editing});

  $DiagnosisCopyWith<$Res> get diagnosis;
  $SignsCopyWith<$Res> get signs;
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? diagnosis = null,
    Object? riskFactors = null,
    Object? causes = null,
    Object? name = null,
    Object? descriptions = null,
    Object? signs = null,
    Object? definition = null,
    Object? epidemiology = null,
    Object? symptoms = null,
    Object? complications = null,
    Object? investigations = null,
    Object? emergencyManagement = null,
    Object? homeManagement = null,
    Object? editing = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as Diagnosis,
      riskFactors: null == riskFactors
          ? _value.riskFactors
          : riskFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      causes: null == causes
          ? _value.causes
          : causes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: null == descriptions
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      signs: null == signs
          ? _value.signs
          : signs // ignore: cast_nullable_to_non_nullable
              as Signs,
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      epidemiology: null == epidemiology
          ? _value.epidemiology
          : epidemiology // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      complications: null == complications
          ? _value.complications
          : complications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigations: null == investigations
          ? _value.investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emergencyManagement: null == emergencyManagement
          ? _value.emergencyManagement
          : emergencyManagement // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      homeManagement: null == homeManagement
          ? _value.homeManagement
          : homeManagement // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiagnosisCopyWith<$Res> get diagnosis {
    return $DiagnosisCopyWith<$Res>(_value.diagnosis, (value) {
      return _then(_value.copyWith(diagnosis: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignsCopyWith<$Res> get signs {
    return $SignsCopyWith<$Res>(_value.signs, (value) {
      return _then(_value.copyWith(signs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Chapter chapter,
      Diagnosis diagnosis,
      List<String> riskFactors,
      List<String> causes,
      String name,
      List<Content> descriptions,
      Signs signs,
      String definition,
      String epidemiology,
      List<String> symptoms,
      List<String> complications,
      List<String> investigations,
      List<Management> emergencyManagement,
      List<Management> homeManagement,
      bool editing});

  @override
  $DiagnosisCopyWith<$Res> get diagnosis;
  @override
  $SignsCopyWith<$Res> get signs;
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? diagnosis = null,
    Object? riskFactors = null,
    Object? causes = null,
    Object? name = null,
    Object? descriptions = null,
    Object? signs = null,
    Object? definition = null,
    Object? epidemiology = null,
    Object? symptoms = null,
    Object? complications = null,
    Object? investigations = null,
    Object? emergencyManagement = null,
    Object? homeManagement = null,
    Object? editing = null,
  }) {
    return _then(_$TopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as Diagnosis,
      riskFactors: null == riskFactors
          ? _value._riskFactors
          : riskFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      causes: null == causes
          ? _value._causes
          : causes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      signs: null == signs
          ? _value.signs
          : signs // ignore: cast_nullable_to_non_nullable
              as Signs,
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      epidemiology: null == epidemiology
          ? _value.epidemiology
          : epidemiology // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      complications: null == complications
          ? _value._complications
          : complications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigations: null == investigations
          ? _value._investigations
          : investigations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emergencyManagement: null == emergencyManagement
          ? _value._emergencyManagement
          : emergencyManagement // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      homeManagement: null == homeManagement
          ? _value._homeManagement
          : homeManagement // ignore: cast_nullable_to_non_nullable
              as List<Management>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicImpl implements _Topic {
  _$TopicImpl(
      {required this.id,
      required this.chapter,
      required this.diagnosis,
      required final List<String> riskFactors,
      required final List<String> causes,
      required this.name,
      required final List<Content> descriptions,
      required this.signs,
      required this.definition,
      required this.epidemiology,
      required final List<String> symptoms,
      required final List<String> complications,
      required final List<String> investigations,
      required final List<Management> emergencyManagement,
      required final List<Management> homeManagement,
      required this.editing})
      : _riskFactors = riskFactors,
        _causes = causes,
        _descriptions = descriptions,
        _symptoms = symptoms,
        _complications = complications,
        _investigations = investigations,
        _emergencyManagement = emergencyManagement,
        _homeManagement = homeManagement;

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  final String id;
  @override
  final Chapter chapter;
  @override
  final Diagnosis diagnosis;
  final List<String> _riskFactors;
  @override
  List<String> get riskFactors {
    if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riskFactors);
  }

  final List<String> _causes;
  @override
  List<String> get causes {
    if (_causes is EqualUnmodifiableListView) return _causes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_causes);
  }

  @override
  final String name;
  final List<Content> _descriptions;
  @override
  List<Content> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  @override
  final Signs signs;
  @override
  final String definition;
  @override
  final String epidemiology;
  final List<String> _symptoms;
  @override
  List<String> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  final List<String> _complications;
  @override
  List<String> get complications {
    if (_complications is EqualUnmodifiableListView) return _complications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complications);
  }

  final List<String> _investigations;
  @override
  List<String> get investigations {
    if (_investigations is EqualUnmodifiableListView) return _investigations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigations);
  }

  final List<Management> _emergencyManagement;
  @override
  List<Management> get emergencyManagement {
    if (_emergencyManagement is EqualUnmodifiableListView)
      return _emergencyManagement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emergencyManagement);
  }

  final List<Management> _homeManagement;
  @override
  List<Management> get homeManagement {
    if (_homeManagement is EqualUnmodifiableListView) return _homeManagement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeManagement);
  }

  @override
  final bool editing;

  @override
  String toString() {
    return 'Topic(id: $id, chapter: $chapter, diagnosis: $diagnosis, riskFactors: $riskFactors, causes: $causes, name: $name, descriptions: $descriptions, signs: $signs, definition: $definition, epidemiology: $epidemiology, symptoms: $symptoms, complications: $complications, investigations: $investigations, emergencyManagement: $emergencyManagement, homeManagement: $homeManagement, editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            const DeepCollectionEquality()
                .equals(other._riskFactors, _riskFactors) &&
            const DeepCollectionEquality().equals(other._causes, _causes) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            (identical(other.signs, signs) || other.signs == signs) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.epidemiology, epidemiology) ||
                other.epidemiology == epidemiology) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            const DeepCollectionEquality()
                .equals(other._complications, _complications) &&
            const DeepCollectionEquality()
                .equals(other._investigations, _investigations) &&
            const DeepCollectionEquality()
                .equals(other._emergencyManagement, _emergencyManagement) &&
            const DeepCollectionEquality()
                .equals(other._homeManagement, _homeManagement) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chapter,
      diagnosis,
      const DeepCollectionEquality().hash(_riskFactors),
      const DeepCollectionEquality().hash(_causes),
      name,
      const DeepCollectionEquality().hash(_descriptions),
      signs,
      definition,
      epidemiology,
      const DeepCollectionEquality().hash(_symptoms),
      const DeepCollectionEquality().hash(_complications),
      const DeepCollectionEquality().hash(_investigations),
      const DeepCollectionEquality().hash(_emergencyManagement),
      const DeepCollectionEquality().hash(_homeManagement),
      editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  factory _Topic(
      {required final String id,
      required final Chapter chapter,
      required final Diagnosis diagnosis,
      required final List<String> riskFactors,
      required final List<String> causes,
      required final String name,
      required final List<Content> descriptions,
      required final Signs signs,
      required final String definition,
      required final String epidemiology,
      required final List<String> symptoms,
      required final List<String> complications,
      required final List<String> investigations,
      required final List<Management> emergencyManagement,
      required final List<Management> homeManagement,
      required final bool editing}) = _$TopicImpl;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  String get id;
  @override
  Chapter get chapter;
  @override
  Diagnosis get diagnosis;
  @override
  List<String> get riskFactors;
  @override
  List<String> get causes;
  @override
  String get name;
  @override
  List<Content> get descriptions;
  @override
  Signs get signs;
  @override
  String get definition;
  @override
  String get epidemiology;
  @override
  List<String> get symptoms;
  @override
  List<String> get complications;
  @override
  List<String> get investigations;
  @override
  List<Management> get emergencyManagement;
  @override
  List<Management> get homeManagement;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Signs _$SignsFromJson(Map<String, dynamic> json) {
  return _Signs.fromJson(json);
}

/// @nodoc
mixin _$Signs {
  String get eye => throw _privateConstructorUsedError;
  String get ent => throw _privateConstructorUsedError;
  String get cns => throw _privateConstructorUsedError;
  String get cvs => throw _privateConstructorUsedError;
  String get pulmo => throw _privateConstructorUsedError;
  String get gu => throw _privateConstructorUsedError;
  String get gi => throw _privateConstructorUsedError;
  VitalsSigns get vitalsSigns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignsCopyWith<Signs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignsCopyWith<$Res> {
  factory $SignsCopyWith(Signs value, $Res Function(Signs) then) =
      _$SignsCopyWithImpl<$Res, Signs>;
  @useResult
  $Res call(
      {String eye,
      String ent,
      String cns,
      String cvs,
      String pulmo,
      String gu,
      String gi,
      VitalsSigns vitalsSigns});

  $VitalsSignsCopyWith<$Res> get vitalsSigns;
}

/// @nodoc
class _$SignsCopyWithImpl<$Res, $Val extends Signs>
    implements $SignsCopyWith<$Res> {
  _$SignsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eye = null,
    Object? ent = null,
    Object? cns = null,
    Object? cvs = null,
    Object? pulmo = null,
    Object? gu = null,
    Object? gi = null,
    Object? vitalsSigns = null,
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
      cns: null == cns
          ? _value.cns
          : cns // ignore: cast_nullable_to_non_nullable
              as String,
      cvs: null == cvs
          ? _value.cvs
          : cvs // ignore: cast_nullable_to_non_nullable
              as String,
      pulmo: null == pulmo
          ? _value.pulmo
          : pulmo // ignore: cast_nullable_to_non_nullable
              as String,
      gu: null == gu
          ? _value.gu
          : gu // ignore: cast_nullable_to_non_nullable
              as String,
      gi: null == gi
          ? _value.gi
          : gi // ignore: cast_nullable_to_non_nullable
              as String,
      vitalsSigns: null == vitalsSigns
          ? _value.vitalsSigns
          : vitalsSigns // ignore: cast_nullable_to_non_nullable
              as VitalsSigns,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VitalsSignsCopyWith<$Res> get vitalsSigns {
    return $VitalsSignsCopyWith<$Res>(_value.vitalsSigns, (value) {
      return _then(_value.copyWith(vitalsSigns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignsImplCopyWith<$Res> implements $SignsCopyWith<$Res> {
  factory _$$SignsImplCopyWith(
          _$SignsImpl value, $Res Function(_$SignsImpl) then) =
      __$$SignsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eye,
      String ent,
      String cns,
      String cvs,
      String pulmo,
      String gu,
      String gi,
      VitalsSigns vitalsSigns});

  @override
  $VitalsSignsCopyWith<$Res> get vitalsSigns;
}

/// @nodoc
class __$$SignsImplCopyWithImpl<$Res>
    extends _$SignsCopyWithImpl<$Res, _$SignsImpl>
    implements _$$SignsImplCopyWith<$Res> {
  __$$SignsImplCopyWithImpl(
      _$SignsImpl _value, $Res Function(_$SignsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eye = null,
    Object? ent = null,
    Object? cns = null,
    Object? cvs = null,
    Object? pulmo = null,
    Object? gu = null,
    Object? gi = null,
    Object? vitalsSigns = null,
  }) {
    return _then(_$SignsImpl(
      eye: null == eye
          ? _value.eye
          : eye // ignore: cast_nullable_to_non_nullable
              as String,
      ent: null == ent
          ? _value.ent
          : ent // ignore: cast_nullable_to_non_nullable
              as String,
      cns: null == cns
          ? _value.cns
          : cns // ignore: cast_nullable_to_non_nullable
              as String,
      cvs: null == cvs
          ? _value.cvs
          : cvs // ignore: cast_nullable_to_non_nullable
              as String,
      pulmo: null == pulmo
          ? _value.pulmo
          : pulmo // ignore: cast_nullable_to_non_nullable
              as String,
      gu: null == gu
          ? _value.gu
          : gu // ignore: cast_nullable_to_non_nullable
              as String,
      gi: null == gi
          ? _value.gi
          : gi // ignore: cast_nullable_to_non_nullable
              as String,
      vitalsSigns: null == vitalsSigns
          ? _value.vitalsSigns
          : vitalsSigns // ignore: cast_nullable_to_non_nullable
              as VitalsSigns,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignsImpl implements _Signs {
  const _$SignsImpl(
      {required this.eye,
      required this.ent,
      required this.cns,
      required this.cvs,
      required this.pulmo,
      required this.gu,
      required this.gi,
      required this.vitalsSigns});

  factory _$SignsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignsImplFromJson(json);

  @override
  final String eye;
  @override
  final String ent;
  @override
  final String cns;
  @override
  final String cvs;
  @override
  final String pulmo;
  @override
  final String gu;
  @override
  final String gi;
  @override
  final VitalsSigns vitalsSigns;

  @override
  String toString() {
    return 'Signs(eye: $eye, ent: $ent, cns: $cns, cvs: $cvs, pulmo: $pulmo, gu: $gu, gi: $gi, vitalsSigns: $vitalsSigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignsImpl &&
            (identical(other.eye, eye) || other.eye == eye) &&
            (identical(other.ent, ent) || other.ent == ent) &&
            (identical(other.cns, cns) || other.cns == cns) &&
            (identical(other.cvs, cvs) || other.cvs == cvs) &&
            (identical(other.pulmo, pulmo) || other.pulmo == pulmo) &&
            (identical(other.gu, gu) || other.gu == gu) &&
            (identical(other.gi, gi) || other.gi == gi) &&
            (identical(other.vitalsSigns, vitalsSigns) ||
                other.vitalsSigns == vitalsSigns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eye, ent, cns, cvs, pulmo, gu, gi, vitalsSigns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignsImplCopyWith<_$SignsImpl> get copyWith =>
      __$$SignsImplCopyWithImpl<_$SignsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignsImplToJson(
      this,
    );
  }
}

abstract class _Signs implements Signs {
  const factory _Signs(
      {required final String eye,
      required final String ent,
      required final String cns,
      required final String cvs,
      required final String pulmo,
      required final String gu,
      required final String gi,
      required final VitalsSigns vitalsSigns}) = _$SignsImpl;

  factory _Signs.fromJson(Map<String, dynamic> json) = _$SignsImpl.fromJson;

  @override
  String get eye;
  @override
  String get ent;
  @override
  String get cns;
  @override
  String get cvs;
  @override
  String get pulmo;
  @override
  String get gu;
  @override
  String get gi;
  @override
  VitalsSigns get vitalsSigns;
  @override
  @JsonKey(ignore: true)
  _$$SignsImplCopyWith<_$SignsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VitalsSigns _$VitalsSignsFromJson(Map<String, dynamic> json) {
  return _VitalsSigns.fromJson(json);
}

/// @nodoc
mixin _$VitalsSigns {
  Temperature get temperature => throw _privateConstructorUsedError;
  BloodPressure get bloodPressure => throw _privateConstructorUsedError;
  int get respiratoryRate => throw _privateConstructorUsedError;
  int get saturation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitalsSignsCopyWith<VitalsSigns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitalsSignsCopyWith<$Res> {
  factory $VitalsSignsCopyWith(
          VitalsSigns value, $Res Function(VitalsSigns) then) =
      _$VitalsSignsCopyWithImpl<$Res, VitalsSigns>;
  @useResult
  $Res call(
      {Temperature temperature,
      BloodPressure bloodPressure,
      int respiratoryRate,
      int saturation});

  $TemperatureCopyWith<$Res> get temperature;
  $BloodPressureCopyWith<$Res> get bloodPressure;
}

/// @nodoc
class _$VitalsSignsCopyWithImpl<$Res, $Val extends VitalsSigns>
    implements $VitalsSignsCopyWith<$Res> {
  _$VitalsSignsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? bloodPressure = null,
    Object? respiratoryRate = null,
    Object? saturation = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      bloodPressure: null == bloodPressure
          ? _value.bloodPressure
          : bloodPressure // ignore: cast_nullable_to_non_nullable
              as BloodPressure,
      respiratoryRate: null == respiratoryRate
          ? _value.respiratoryRate
          : respiratoryRate // ignore: cast_nullable_to_non_nullable
              as int,
      saturation: null == saturation
          ? _value.saturation
          : saturation // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res> get temperature {
    return $TemperatureCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BloodPressureCopyWith<$Res> get bloodPressure {
    return $BloodPressureCopyWith<$Res>(_value.bloodPressure, (value) {
      return _then(_value.copyWith(bloodPressure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitalsSignsImplCopyWith<$Res>
    implements $VitalsSignsCopyWith<$Res> {
  factory _$$VitalsSignsImplCopyWith(
          _$VitalsSignsImpl value, $Res Function(_$VitalsSignsImpl) then) =
      __$$VitalsSignsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Temperature temperature,
      BloodPressure bloodPressure,
      int respiratoryRate,
      int saturation});

  @override
  $TemperatureCopyWith<$Res> get temperature;
  @override
  $BloodPressureCopyWith<$Res> get bloodPressure;
}

/// @nodoc
class __$$VitalsSignsImplCopyWithImpl<$Res>
    extends _$VitalsSignsCopyWithImpl<$Res, _$VitalsSignsImpl>
    implements _$$VitalsSignsImplCopyWith<$Res> {
  __$$VitalsSignsImplCopyWithImpl(
      _$VitalsSignsImpl _value, $Res Function(_$VitalsSignsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? bloodPressure = null,
    Object? respiratoryRate = null,
    Object? saturation = null,
  }) {
    return _then(_$VitalsSignsImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      bloodPressure: null == bloodPressure
          ? _value.bloodPressure
          : bloodPressure // ignore: cast_nullable_to_non_nullable
              as BloodPressure,
      respiratoryRate: null == respiratoryRate
          ? _value.respiratoryRate
          : respiratoryRate // ignore: cast_nullable_to_non_nullable
              as int,
      saturation: null == saturation
          ? _value.saturation
          : saturation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitalsSignsImpl implements _VitalsSigns {
  _$VitalsSignsImpl(
      {required this.temperature,
      required this.bloodPressure,
      required this.respiratoryRate,
      required this.saturation});

  factory _$VitalsSignsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitalsSignsImplFromJson(json);

  @override
  final Temperature temperature;
  @override
  final BloodPressure bloodPressure;
  @override
  final int respiratoryRate;
  @override
  final int saturation;

  @override
  String toString() {
    return 'VitalsSigns(temperature: $temperature, bloodPressure: $bloodPressure, respiratoryRate: $respiratoryRate, saturation: $saturation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitalsSignsImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.bloodPressure, bloodPressure) ||
                other.bloodPressure == bloodPressure) &&
            (identical(other.respiratoryRate, respiratoryRate) ||
                other.respiratoryRate == respiratoryRate) &&
            (identical(other.saturation, saturation) ||
                other.saturation == saturation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temperature, bloodPressure, respiratoryRate, saturation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitalsSignsImplCopyWith<_$VitalsSignsImpl> get copyWith =>
      __$$VitalsSignsImplCopyWithImpl<_$VitalsSignsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitalsSignsImplToJson(
      this,
    );
  }
}

abstract class _VitalsSigns implements VitalsSigns {
  factory _VitalsSigns(
      {required final Temperature temperature,
      required final BloodPressure bloodPressure,
      required final int respiratoryRate,
      required final int saturation}) = _$VitalsSignsImpl;

  factory _VitalsSigns.fromJson(Map<String, dynamic> json) =
      _$VitalsSignsImpl.fromJson;

  @override
  Temperature get temperature;
  @override
  BloodPressure get bloodPressure;
  @override
  int get respiratoryRate;
  @override
  int get saturation;
  @override
  @JsonKey(ignore: true)
  _$$VitalsSignsImplCopyWith<_$VitalsSignsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BloodPressure _$BloodPressureFromJson(Map<String, dynamic> json) {
  return _BloodPressure.fromJson(json);
}

/// @nodoc
mixin _$BloodPressure {
  int get systolic => throw _privateConstructorUsedError;
  int get diastolic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodPressureCopyWith<BloodPressure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodPressureCopyWith<$Res> {
  factory $BloodPressureCopyWith(
          BloodPressure value, $Res Function(BloodPressure) then) =
      _$BloodPressureCopyWithImpl<$Res, BloodPressure>;
  @useResult
  $Res call({int systolic, int diastolic});
}

/// @nodoc
class _$BloodPressureCopyWithImpl<$Res, $Val extends BloodPressure>
    implements $BloodPressureCopyWith<$Res> {
  _$BloodPressureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic = null,
    Object? diastolic = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BloodPressureImplCopyWith<$Res>
    implements $BloodPressureCopyWith<$Res> {
  factory _$$BloodPressureImplCopyWith(
          _$BloodPressureImpl value, $Res Function(_$BloodPressureImpl) then) =
      __$$BloodPressureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int systolic, int diastolic});
}

/// @nodoc
class __$$BloodPressureImplCopyWithImpl<$Res>
    extends _$BloodPressureCopyWithImpl<$Res, _$BloodPressureImpl>
    implements _$$BloodPressureImplCopyWith<$Res> {
  __$$BloodPressureImplCopyWithImpl(
      _$BloodPressureImpl _value, $Res Function(_$BloodPressureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic = null,
    Object? diastolic = null,
  }) {
    return _then(_$BloodPressureImpl(
      systolic: null == systolic
          ? _value.systolic
          : systolic // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic: null == diastolic
          ? _value.diastolic
          : diastolic // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BloodPressureImpl implements _BloodPressure {
  _$BloodPressureImpl({required this.systolic, required this.diastolic});

  factory _$BloodPressureImpl.fromJson(Map<String, dynamic> json) =>
      _$$BloodPressureImplFromJson(json);

  @override
  final int systolic;
  @override
  final int diastolic;

  @override
  String toString() {
    return 'BloodPressure(systolic: $systolic, diastolic: $diastolic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BloodPressureImpl &&
            (identical(other.systolic, systolic) ||
                other.systolic == systolic) &&
            (identical(other.diastolic, diastolic) ||
                other.diastolic == diastolic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, systolic, diastolic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BloodPressureImplCopyWith<_$BloodPressureImpl> get copyWith =>
      __$$BloodPressureImplCopyWithImpl<_$BloodPressureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BloodPressureImplToJson(
      this,
    );
  }
}

abstract class _BloodPressure implements BloodPressure {
  factory _BloodPressure(
      {required final int systolic,
      required final int diastolic}) = _$BloodPressureImpl;

  factory _BloodPressure.fromJson(Map<String, dynamic> json) =
      _$BloodPressureImpl.fromJson;

  @override
  int get systolic;
  @override
  int get diastolic;
  @override
  @JsonKey(ignore: true)
  _$$BloodPressureImplCopyWith<_$BloodPressureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call({double temperature});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureImplCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$TemperatureImplCopyWith(
          _$TemperatureImpl value, $Res Function(_$TemperatureImpl) then) =
      __$$TemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temperature});
}

/// @nodoc
class __$$TemperatureImplCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$TemperatureImpl>
    implements _$$TemperatureImplCopyWith<$Res> {
  __$$TemperatureImplCopyWithImpl(
      _$TemperatureImpl _value, $Res Function(_$TemperatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
  }) {
    return _then(_$TemperatureImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureImpl extends _Temperature {
  const _$TemperatureImpl({required this.temperature}) : super._();

  factory _$TemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureImplFromJson(json);

  @override
  final double temperature;

  @override
  String toString() {
    return 'Temperature(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      __$$TemperatureImplCopyWithImpl<_$TemperatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureImplToJson(
      this,
    );
  }
}

abstract class _Temperature extends Temperature {
  const factory _Temperature({required final double temperature}) =
      _$TemperatureImpl;
  const _Temperature._() : super._();

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$TemperatureImpl.fromJson;

  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Management _$ManagementFromJson(Map<String, dynamic> json) {
  return _Management.fromJson(json);
}

/// @nodoc
mixin _$Management {
  String get medicine => throw _privateConstructorUsedError;
  String get dose => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;

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
  $Res call({String medicine, String dose, String instructions});
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
    Object? medicine = null,
    Object? dose = null,
    Object? instructions = null,
  }) {
    return _then(_value.copyWith(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as String,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String medicine, String dose, String instructions});
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
    Object? medicine = null,
    Object? dose = null,
    Object? instructions = null,
  }) {
    return _then(_$ManagementImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as String,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagementImpl implements _Management {
  _$ManagementImpl(
      {required this.medicine, required this.dose, required this.instructions});

  factory _$ManagementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagementImplFromJson(json);

  @override
  final String medicine;
  @override
  final String dose;
  @override
  final String instructions;

  @override
  String toString() {
    return 'Management(medicine: $medicine, dose: $dose, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagementImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medicine, dose, instructions);

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
  factory _Management(
      {required final String medicine,
      required final String dose,
      required final String instructions}) = _$ManagementImpl;

  factory _Management.fromJson(Map<String, dynamic> json) =
      _$ManagementImpl.fromJson;

  @override
  String get medicine;
  @override
  String get dose;
  @override
  String get instructions;
  @override
  @JsonKey(ignore: true)
  _$$ManagementImplCopyWith<_$ManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  String get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({String title, String? text, String? path});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? text, String? path});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = freezed,
    Object? path = freezed,
  }) {
    return _then(_$ContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl extends _Content {
  const _$ContentImpl({required this.title, this.text, this.path}) : super._();

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  final String title;
  @override
  final String? text;
  @override
  final String? path;

  @override
  String toString() {
    return 'Content(title: $title, text: $text, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, text, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content extends Content {
  const factory _Content(
      {required final String title,
      final String? text,
      final String? path}) = _$ContentImpl;
  const _Content._() : super._();

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  String get title;
  @override
  String? get text;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Diagnosis _$DiagnosisFromJson(Map<String, dynamic> json) {
  return _Diagnosis.fromJson(json);
}

/// @nodoc
mixin _$Diagnosis {
  String get definiteDiagnosis => throw _privateConstructorUsedError;
  List<String> get provisionalDiagnosis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosisCopyWith<Diagnosis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisCopyWith<$Res> {
  factory $DiagnosisCopyWith(Diagnosis value, $Res Function(Diagnosis) then) =
      _$DiagnosisCopyWithImpl<$Res, Diagnosis>;
  @useResult
  $Res call({String definiteDiagnosis, List<String> provisionalDiagnosis});
}

/// @nodoc
class _$DiagnosisCopyWithImpl<$Res, $Val extends Diagnosis>
    implements $DiagnosisCopyWith<$Res> {
  _$DiagnosisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definiteDiagnosis = null,
    Object? provisionalDiagnosis = null,
  }) {
    return _then(_value.copyWith(
      definiteDiagnosis: null == definiteDiagnosis
          ? _value.definiteDiagnosis
          : definiteDiagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalDiagnosis: null == provisionalDiagnosis
          ? _value.provisionalDiagnosis
          : provisionalDiagnosis // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosisImplCopyWith<$Res>
    implements $DiagnosisCopyWith<$Res> {
  factory _$$DiagnosisImplCopyWith(
          _$DiagnosisImpl value, $Res Function(_$DiagnosisImpl) then) =
      __$$DiagnosisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String definiteDiagnosis, List<String> provisionalDiagnosis});
}

/// @nodoc
class __$$DiagnosisImplCopyWithImpl<$Res>
    extends _$DiagnosisCopyWithImpl<$Res, _$DiagnosisImpl>
    implements _$$DiagnosisImplCopyWith<$Res> {
  __$$DiagnosisImplCopyWithImpl(
      _$DiagnosisImpl _value, $Res Function(_$DiagnosisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definiteDiagnosis = null,
    Object? provisionalDiagnosis = null,
  }) {
    return _then(_$DiagnosisImpl(
      definiteDiagnosis: null == definiteDiagnosis
          ? _value.definiteDiagnosis
          : definiteDiagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalDiagnosis: null == provisionalDiagnosis
          ? _value._provisionalDiagnosis
          : provisionalDiagnosis // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosisImpl implements _Diagnosis {
  _$DiagnosisImpl(
      {required this.definiteDiagnosis,
      required final List<String> provisionalDiagnosis})
      : _provisionalDiagnosis = provisionalDiagnosis;

  factory _$DiagnosisImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosisImplFromJson(json);

  @override
  final String definiteDiagnosis;
  final List<String> _provisionalDiagnosis;
  @override
  List<String> get provisionalDiagnosis {
    if (_provisionalDiagnosis is EqualUnmodifiableListView)
      return _provisionalDiagnosis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provisionalDiagnosis);
  }

  @override
  String toString() {
    return 'Diagnosis(definiteDiagnosis: $definiteDiagnosis, provisionalDiagnosis: $provisionalDiagnosis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosisImpl &&
            (identical(other.definiteDiagnosis, definiteDiagnosis) ||
                other.definiteDiagnosis == definiteDiagnosis) &&
            const DeepCollectionEquality()
                .equals(other._provisionalDiagnosis, _provisionalDiagnosis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, definiteDiagnosis,
      const DeepCollectionEquality().hash(_provisionalDiagnosis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosisImplCopyWith<_$DiagnosisImpl> get copyWith =>
      __$$DiagnosisImplCopyWithImpl<_$DiagnosisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosisImplToJson(
      this,
    );
  }
}

abstract class _Diagnosis implements Diagnosis {
  factory _Diagnosis(
      {required final String definiteDiagnosis,
      required final List<String> provisionalDiagnosis}) = _$DiagnosisImpl;

  factory _Diagnosis.fromJson(Map<String, dynamic> json) =
      _$DiagnosisImpl.fromJson;

  @override
  String get definiteDiagnosis;
  @override
  List<String> get provisionalDiagnosis;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosisImplCopyWith<_$DiagnosisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
