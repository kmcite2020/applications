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
  List<Duty> get duties => throw _privateConstructorUsedError;

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
  $Res call({String id, String name, List<Duty> duties});
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
    Object? duties = null,
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
      duties: null == duties
          ? _value.duties
          : duties // ignore: cast_nullable_to_non_nullable
              as List<Duty>,
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
  $Res call({String id, String name, List<Duty> duties});
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
    Object? duties = null,
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
      duties: null == duties
          ? _value._duties
          : duties // ignore: cast_nullable_to_non_nullable
              as List<Duty>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl with DiagnosticableTreeMixin implements _Department {
  const _$DepartmentImpl(
      {this.id = '', this.name = '', final List<Duty> duties = const <Duty>[]})
      : _duties = duties;

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  final List<Duty> _duties;
  @override
  @JsonKey()
  List<Duty> get duties {
    if (_duties is EqualUnmodifiableListView) return _duties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duties);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Department(id: $id, name: $name, duties: $duties)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Department'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duties', duties));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._duties, _duties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_duties));

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
  const factory _Department(
      {final String id,
      final String name,
      final List<Duty> duties}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Duty> get duties;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Duty _$DutyFromJson(Map<String, dynamic> json) {
  return _Duty.fromJson(json);
}

/// @nodoc
mixin _$Duty {
  DayShift get dayShift => throw _privateConstructorUsedError;
  Doctor get doctor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DutyCopyWith<Duty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DutyCopyWith<$Res> {
  factory $DutyCopyWith(Duty value, $Res Function(Duty) then) =
      _$DutyCopyWithImpl<$Res, Duty>;
  @useResult
  $Res call({DayShift dayShift, Doctor doctor});

  $DayShiftCopyWith<$Res> get dayShift;
  $DoctorCopyWith<$Res> get doctor;
}

/// @nodoc
class _$DutyCopyWithImpl<$Res, $Val extends Duty>
    implements $DutyCopyWith<$Res> {
  _$DutyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayShift = null,
    Object? doctor = null,
  }) {
    return _then(_value.copyWith(
      dayShift: null == dayShift
          ? _value.dayShift
          : dayShift // ignore: cast_nullable_to_non_nullable
              as DayShift,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayShiftCopyWith<$Res> get dayShift {
    return $DayShiftCopyWith<$Res>(_value.dayShift, (value) {
      return _then(_value.copyWith(dayShift: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res> get doctor {
    return $DoctorCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DutyImplCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory _$$DutyImplCopyWith(
          _$DutyImpl value, $Res Function(_$DutyImpl) then) =
      __$$DutyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DayShift dayShift, Doctor doctor});

  @override
  $DayShiftCopyWith<$Res> get dayShift;
  @override
  $DoctorCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$DutyImplCopyWithImpl<$Res>
    extends _$DutyCopyWithImpl<$Res, _$DutyImpl>
    implements _$$DutyImplCopyWith<$Res> {
  __$$DutyImplCopyWithImpl(_$DutyImpl _value, $Res Function(_$DutyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayShift = null,
    Object? doctor = null,
  }) {
    return _then(_$DutyImpl(
      dayShift: null == dayShift
          ? _value.dayShift
          : dayShift // ignore: cast_nullable_to_non_nullable
              as DayShift,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DutyImpl with DiagnosticableTreeMixin implements _Duty {
  const _$DutyImpl({required this.dayShift, required this.doctor});

  factory _$DutyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DutyImplFromJson(json);

  @override
  final DayShift dayShift;
  @override
  final Doctor doctor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Duty(dayShift: $dayShift, doctor: $doctor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Duty'))
      ..add(DiagnosticsProperty('dayShift', dayShift))
      ..add(DiagnosticsProperty('doctor', doctor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DutyImpl &&
            (identical(other.dayShift, dayShift) ||
                other.dayShift == dayShift) &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayShift, doctor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DutyImplCopyWith<_$DutyImpl> get copyWith =>
      __$$DutyImplCopyWithImpl<_$DutyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DutyImplToJson(
      this,
    );
  }
}

abstract class _Duty implements Duty {
  const factory _Duty(
      {required final DayShift dayShift,
      required final Doctor doctor}) = _$DutyImpl;

  factory _Duty.fromJson(Map<String, dynamic> json) = _$DutyImpl.fromJson;

  @override
  DayShift get dayShift;
  @override
  Doctor get doctor;
  @override
  @JsonKey(ignore: true)
  _$$DutyImplCopyWith<_$DutyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
