// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pictures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Imagery _$ImageryFromJson(Map<String, dynamic> json) {
  return _Imagery.fromJson(json);
}

/// @nodoc
mixin _$Imagery {
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageryCopyWith<Imagery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageryCopyWith<$Res> {
  factory $ImageryCopyWith(Imagery value, $Res Function(Imagery) then) =
      _$ImageryCopyWithImpl<$Res, Imagery>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$ImageryCopyWithImpl<$Res, $Val extends Imagery>
    implements $ImageryCopyWith<$Res> {
  _$ImageryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageryImplCopyWith<$Res> implements $ImageryCopyWith<$Res> {
  factory _$$ImageryImplCopyWith(
          _$ImageryImpl value, $Res Function(_$ImageryImpl) then) =
      __$$ImageryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ImageryImplCopyWithImpl<$Res>
    extends _$ImageryCopyWithImpl<$Res, _$ImageryImpl>
    implements _$$ImageryImplCopyWith<$Res> {
  __$$ImageryImplCopyWithImpl(
      _$ImageryImpl _value, $Res Function(_$ImageryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImageryImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageryImpl extends _Imagery with DiagnosticableTreeMixin {
  const _$ImageryImpl({this.path = ''}) : super._();

  factory _$ImageryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageryImplFromJson(json);

  @override
  @JsonKey()
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Imagery(path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Imagery'))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageryImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageryImplCopyWith<_$ImageryImpl> get copyWith =>
      __$$ImageryImplCopyWithImpl<_$ImageryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageryImplToJson(
      this,
    );
  }
}

abstract class _Imagery extends Imagery {
  const factory _Imagery({final String path}) = _$ImageryImpl;
  const _Imagery._() : super._();

  factory _Imagery.fromJson(Map<String, dynamic> json) = _$ImageryImpl.fromJson;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$ImageryImplCopyWith<_$ImageryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Imageries _$ImageriesFromJson(Map<String, dynamic> json) {
  return _Imageries.fromJson(json);
}

/// @nodoc
mixin _$Imageries {
  List<Imagery> get imageryCache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageriesCopyWith<Imageries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageriesCopyWith<$Res> {
  factory $ImageriesCopyWith(Imageries value, $Res Function(Imageries) then) =
      _$ImageriesCopyWithImpl<$Res, Imageries>;
  @useResult
  $Res call({List<Imagery> imageryCache});
}

/// @nodoc
class _$ImageriesCopyWithImpl<$Res, $Val extends Imageries>
    implements $ImageriesCopyWith<$Res> {
  _$ImageriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageryCache = null,
  }) {
    return _then(_value.copyWith(
      imageryCache: null == imageryCache
          ? _value.imageryCache
          : imageryCache // ignore: cast_nullable_to_non_nullable
              as List<Imagery>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageriesImplCopyWith<$Res>
    implements $ImageriesCopyWith<$Res> {
  factory _$$ImageriesImplCopyWith(
          _$ImageriesImpl value, $Res Function(_$ImageriesImpl) then) =
      __$$ImageriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Imagery> imageryCache});
}

/// @nodoc
class __$$ImageriesImplCopyWithImpl<$Res>
    extends _$ImageriesCopyWithImpl<$Res, _$ImageriesImpl>
    implements _$$ImageriesImplCopyWith<$Res> {
  __$$ImageriesImplCopyWithImpl(
      _$ImageriesImpl _value, $Res Function(_$ImageriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageryCache = null,
  }) {
    return _then(_$ImageriesImpl(
      imageryCache: null == imageryCache
          ? _value._imageryCache
          : imageryCache // ignore: cast_nullable_to_non_nullable
              as List<Imagery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageriesImpl extends _Imageries with DiagnosticableTreeMixin {
  const _$ImageriesImpl({final List<Imagery> imageryCache = const <Imagery>[]})
      : _imageryCache = imageryCache,
        super._();

  factory _$ImageriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageriesImplFromJson(json);

  final List<Imagery> _imageryCache;
  @override
  @JsonKey()
  List<Imagery> get imageryCache {
    if (_imageryCache is EqualUnmodifiableListView) return _imageryCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageryCache);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Imageries(imageryCache: $imageryCache)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Imageries'))
      ..add(DiagnosticsProperty('imageryCache', imageryCache));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageriesImpl &&
            const DeepCollectionEquality()
                .equals(other._imageryCache, _imageryCache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imageryCache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageriesImplCopyWith<_$ImageriesImpl> get copyWith =>
      __$$ImageriesImplCopyWithImpl<_$ImageriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageriesImplToJson(
      this,
    );
  }
}

abstract class _Imageries extends Imageries {
  const factory _Imageries({final List<Imagery> imageryCache}) =
      _$ImageriesImpl;
  const _Imageries._() : super._();

  factory _Imageries.fromJson(Map<String, dynamic> json) =
      _$ImageriesImpl.fromJson;

  @override
  List<Imagery> get imageryCache;
  @override
  @JsonKey(ignore: true)
  _$$ImageriesImplCopyWith<_$ImageriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
