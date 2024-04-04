// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackupModel _$BackupModelFromJson(Map<String, dynamic> json) {
  return _BackupModel.fromJson(json);
}

/// @nodoc
mixin _$BackupModel {
  List<String> get paths => throw _privateConstructorUsedError;
  BackupStatus get backupStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackupModelCopyWith<BackupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupModelCopyWith<$Res> {
  factory $BackupModelCopyWith(
          BackupModel value, $Res Function(BackupModel) then) =
      _$BackupModelCopyWithImpl<$Res, BackupModel>;
  @useResult
  $Res call({List<String> paths, BackupStatus backupStatus});
}

/// @nodoc
class _$BackupModelCopyWithImpl<$Res, $Val extends BackupModel>
    implements $BackupModelCopyWith<$Res> {
  _$BackupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paths = null,
    Object? backupStatus = null,
  }) {
    return _then(_value.copyWith(
      paths: null == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backupStatus: null == backupStatus
          ? _value.backupStatus
          : backupStatus // ignore: cast_nullable_to_non_nullable
              as BackupStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackupModelImplCopyWith<$Res>
    implements $BackupModelCopyWith<$Res> {
  factory _$$BackupModelImplCopyWith(
          _$BackupModelImpl value, $Res Function(_$BackupModelImpl) then) =
      __$$BackupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> paths, BackupStatus backupStatus});
}

/// @nodoc
class __$$BackupModelImplCopyWithImpl<$Res>
    extends _$BackupModelCopyWithImpl<$Res, _$BackupModelImpl>
    implements _$$BackupModelImplCopyWith<$Res> {
  __$$BackupModelImplCopyWithImpl(
      _$BackupModelImpl _value, $Res Function(_$BackupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paths = null,
    Object? backupStatus = null,
  }) {
    return _then(_$BackupModelImpl(
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backupStatus: null == backupStatus
          ? _value.backupStatus
          : backupStatus // ignore: cast_nullable_to_non_nullable
              as BackupStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackupModelImpl implements _BackupModel {
  const _$BackupModelImpl(
      {required final List<String> paths, required this.backupStatus})
      : _paths = paths;

  factory _$BackupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackupModelImplFromJson(json);

  final List<String> _paths;
  @override
  List<String> get paths {
    if (_paths is EqualUnmodifiableListView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paths);
  }

  @override
  final BackupStatus backupStatus;

  @override
  String toString() {
    return 'BackupModel(paths: $paths, backupStatus: $backupStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupModelImpl &&
            const DeepCollectionEquality().equals(other._paths, _paths) &&
            (identical(other.backupStatus, backupStatus) ||
                other.backupStatus == backupStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paths), backupStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupModelImplCopyWith<_$BackupModelImpl> get copyWith =>
      __$$BackupModelImplCopyWithImpl<_$BackupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackupModelImplToJson(
      this,
    );
  }
}

abstract class _BackupModel implements BackupModel {
  const factory _BackupModel(
      {required final List<String> paths,
      required final BackupStatus backupStatus}) = _$BackupModelImpl;

  factory _BackupModel.fromJson(Map<String, dynamic> json) =
      _$BackupModelImpl.fromJson;

  @override
  List<String> get paths;
  @override
  BackupStatus get backupStatus;
  @override
  @JsonKey(ignore: true)
  _$$BackupModelImplCopyWith<_$BackupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
