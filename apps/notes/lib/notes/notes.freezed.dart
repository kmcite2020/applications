// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String get id => throw _privateConstructorUsedError;
  DateTime get timeCreated => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call({String id, DateTime timeCreated, String title, String details});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeCreated = null,
    Object? title = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime timeCreated, String title, String details});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeCreated = null,
    Object? title = null,
    Object? details = null,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl with DiagnosticableTreeMixin implements _Note {
  const _$NoteImpl(
      {required this.id,
      required this.timeCreated,
      this.title = '',
      this.details = ''});

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timeCreated;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String details;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Note(id: $id, timeCreated: $timeCreated, title: $title, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Note'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('timeCreated', timeCreated))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeCreated, timeCreated) ||
                other.timeCreated == timeCreated) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, timeCreated, title, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {required final String id,
      required final DateTime timeCreated,
      final String title,
      final String details}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timeCreated;
  @override
  String get title;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
