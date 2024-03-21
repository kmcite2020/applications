// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Study _$StudyFromJson(Map<String, dynamic> json) {
  return _Study.fromJson(json);
}

/// @nodoc
mixin _$Study {
  String get id => throw _privateConstructorUsedError;
  DateTime get started => throw _privateConstructorUsedError;
  DateTime get ended => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyCopyWith<Study> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyCopyWith<$Res> {
  factory $StudyCopyWith(Study value, $Res Function(Study) then) =
      _$StudyCopyWithImpl<$Res, Study>;
  @useResult
  $Res call({String id, DateTime started, DateTime ended, String description});
}

/// @nodoc
class _$StudyCopyWithImpl<$Res, $Val extends Study>
    implements $StudyCopyWith<$Res> {
  _$StudyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? started = null,
    Object? ended = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      started: null == started
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ended: null == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyImplCopyWith<$Res> implements $StudyCopyWith<$Res> {
  factory _$$StudyImplCopyWith(
          _$StudyImpl value, $Res Function(_$StudyImpl) then) =
      __$$StudyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime started, DateTime ended, String description});
}

/// @nodoc
class __$$StudyImplCopyWithImpl<$Res>
    extends _$StudyCopyWithImpl<$Res, _$StudyImpl>
    implements _$$StudyImplCopyWith<$Res> {
  __$$StudyImplCopyWithImpl(
      _$StudyImpl _value, $Res Function(_$StudyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? started = null,
    Object? ended = null,
    Object? description = null,
  }) {
    return _then(_$StudyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      started: null == started
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ended: null == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyImpl implements _Study {
  const _$StudyImpl(
      {this.id = '',
      required this.started,
      required this.ended,
      this.description = ''});

  factory _$StudyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final DateTime started;
  @override
  final DateTime ended;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'Study(id: $id, started: $started, ended: $ended, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, started, ended, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyImplCopyWith<_$StudyImpl> get copyWith =>
      __$$StudyImplCopyWithImpl<_$StudyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyImplToJson(
      this,
    );
  }
}

abstract class _Study implements Study {
  const factory _Study(
      {final String id,
      required final DateTime started,
      required final DateTime ended,
      final String description}) = _$StudyImpl;

  factory _Study.fromJson(Map<String, dynamic> json) = _$StudyImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get started;
  @override
  DateTime get ended;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$StudyImplCopyWith<_$StudyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
