// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Backup _$BackupFromJson(Map<String, dynamic> json) {
  return _Backup.fromJson(json);
}

/// @nodoc
mixin _$Backup {
  List<String> get files => throw _privateConstructorUsedError;
  BackupStatus get backupStatus => throw _privateConstructorUsedError;
  bool get isShowHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackupCopyWith<Backup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupCopyWith<$Res> {
  factory $BackupCopyWith(Backup value, $Res Function(Backup) then) =
      _$BackupCopyWithImpl<$Res, Backup>;
  @useResult
  $Res call(
      {List<String> files, BackupStatus backupStatus, bool isShowHistory});
}

/// @nodoc
class _$BackupCopyWithImpl<$Res, $Val extends Backup>
    implements $BackupCopyWith<$Res> {
  _$BackupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? backupStatus = null,
    Object? isShowHistory = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backupStatus: null == backupStatus
          ? _value.backupStatus
          : backupStatus // ignore: cast_nullable_to_non_nullable
              as BackupStatus,
      isShowHistory: null == isShowHistory
          ? _value.isShowHistory
          : isShowHistory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackupImplCopyWith<$Res> implements $BackupCopyWith<$Res> {
  factory _$$BackupImplCopyWith(
          _$BackupImpl value, $Res Function(_$BackupImpl) then) =
      __$$BackupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> files, BackupStatus backupStatus, bool isShowHistory});
}

/// @nodoc
class __$$BackupImplCopyWithImpl<$Res>
    extends _$BackupCopyWithImpl<$Res, _$BackupImpl>
    implements _$$BackupImplCopyWith<$Res> {
  __$$BackupImplCopyWithImpl(
      _$BackupImpl _value, $Res Function(_$BackupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? backupStatus = null,
    Object? isShowHistory = null,
  }) {
    return _then(_$BackupImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backupStatus: null == backupStatus
          ? _value.backupStatus
          : backupStatus // ignore: cast_nullable_to_non_nullable
              as BackupStatus,
      isShowHistory: null == isShowHistory
          ? _value.isShowHistory
          : isShowHistory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackupImpl extends _Backup {
  const _$BackupImpl(
      {final List<String> files = const <String>[],
      this.backupStatus = BackupStatus.idle,
      this.isShowHistory = true})
      : _files = files,
        super._();

  factory _$BackupImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackupImplFromJson(json);

  final List<String> _files;
  @override
  @JsonKey()
  List<String> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  @JsonKey()
  final BackupStatus backupStatus;
  @override
  @JsonKey()
  final bool isShowHistory;

  @override
  String toString() {
    return 'Backup(files: $files, backupStatus: $backupStatus, isShowHistory: $isShowHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupImpl &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.backupStatus, backupStatus) ||
                other.backupStatus == backupStatus) &&
            (identical(other.isShowHistory, isShowHistory) ||
                other.isShowHistory == isShowHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_files), backupStatus, isShowHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      __$$BackupImplCopyWithImpl<_$BackupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackupImplToJson(
      this,
    );
  }
}

abstract class _Backup extends Backup {
  const factory _Backup(
      {final List<String> files,
      final BackupStatus backupStatus,
      final bool isShowHistory}) = _$BackupImpl;
  const _Backup._() : super._();

  factory _Backup.fromJson(Map<String, dynamic> json) = _$BackupImpl.fromJson;

  @override
  List<String> get files;
  @override
  BackupStatus get backupStatus;
  @override
  bool get isShowHistory;
  @override
  @JsonKey(ignore: true)
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
