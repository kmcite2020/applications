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
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  NoteStatus get noteStatus => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime get timeCreated => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)
        internal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)?
        internal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)?
        internal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Note value) internal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Note value)? internal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Note value)? internal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String id,
      String title,
      String details,
      NoteStatus noteStatus,
      DateTime dueDate,
      DateTime timeCreated});
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
    Object? title = null,
    Object? details = null,
    Object? noteStatus = null,
    Object? dueDate = null,
    Object? timeCreated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      noteStatus: null == noteStatus
          ? _value.noteStatus
          : noteStatus // ignore: cast_nullable_to_non_nullable
              as NoteStatus,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call(
      {String id,
      String title,
      String details,
      NoteStatus noteStatus,
      DateTime dueDate,
      DateTime timeCreated});
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
    Object? title = null,
    Object? details = null,
    Object? noteStatus = null,
    Object? dueDate = null,
    Object? timeCreated = null,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      noteStatus: null == noteStatus
          ? _value.noteStatus
          : noteStatus // ignore: cast_nullable_to_non_nullable
              as NoteStatus,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl with DiagnosticableTreeMixin implements _Note {
  const _$NoteImpl(
      {this.id = '',
      this.title = '',
      this.details = '',
      this.noteStatus = NoteStatus.notCompleted,
      required this.dueDate,
      required this.timeCreated});

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String details;
  @override
  @JsonKey()
  final NoteStatus noteStatus;
  @override
  final DateTime dueDate;
  @override
  final DateTime timeCreated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Note.internal(id: $id, title: $title, details: $details, noteStatus: $noteStatus, dueDate: $dueDate, timeCreated: $timeCreated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Note.internal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('noteStatus', noteStatus))
      ..add(DiagnosticsProperty('dueDate', dueDate))
      ..add(DiagnosticsProperty('timeCreated', timeCreated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.noteStatus, noteStatus) ||
                other.noteStatus == noteStatus) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.timeCreated, timeCreated) ||
                other.timeCreated == timeCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, details, noteStatus, dueDate, timeCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)
        internal,
  }) {
    return internal(id, title, details, noteStatus, dueDate, timeCreated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)?
        internal,
  }) {
    return internal?.call(id, title, details, noteStatus, dueDate, timeCreated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String details,
            NoteStatus noteStatus, DateTime dueDate, DateTime timeCreated)?
        internal,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(id, title, details, noteStatus, dueDate, timeCreated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Note value) internal,
  }) {
    return internal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Note value)? internal,
  }) {
    return internal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Note value)? internal,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {final String id,
      final String title,
      final String details,
      final NoteStatus noteStatus,
      required final DateTime dueDate,
      required final DateTime timeCreated}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get details;
  @override
  NoteStatus get noteStatus;
  @override
  DateTime get dueDate;
  @override
  DateTime get timeCreated;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
