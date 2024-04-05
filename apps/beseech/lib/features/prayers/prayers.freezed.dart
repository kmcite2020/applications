// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prayers _$PrayersFromJson(Map<String, dynamic> json) {
  return _Prayers.fromJson(json);
}

/// @nodoc
mixin _$Prayers {
  int get fajr => throw _privateConstructorUsedError;
  int get zuhr => throw _privateConstructorUsedError;
  int get asar => throw _privateConstructorUsedError;
  int get maghrib => throw _privateConstructorUsedError;
  int get isha => throw _privateConstructorUsedError;
  Map<String, Prayer> get prayers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int fajr, int zuhr, int asar, int maghrib,
            int isha, Map<String, Prayer> prayers)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int fajr, int zuhr, int asar, int maghrib, int isha,
            Map<String, Prayer> prayers)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int fajr, int zuhr, int asar, int maghrib, int isha,
            Map<String, Prayer> prayers)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Prayers value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Prayers value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Prayers value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayersCopyWith<Prayers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayersCopyWith<$Res> {
  factory $PrayersCopyWith(Prayers value, $Res Function(Prayers) then) =
      _$PrayersCopyWithImpl<$Res, Prayers>;
  @useResult
  $Res call(
      {int fajr,
      int zuhr,
      int asar,
      int maghrib,
      int isha,
      Map<String, Prayer> prayers});
}

/// @nodoc
class _$PrayersCopyWithImpl<$Res, $Val extends Prayers>
    implements $PrayersCopyWith<$Res> {
  _$PrayersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? zuhr = null,
    Object? asar = null,
    Object? maghrib = null,
    Object? isha = null,
    Object? prayers = null,
  }) {
    return _then(_value.copyWith(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int,
      zuhr: null == zuhr
          ? _value.zuhr
          : zuhr // ignore: cast_nullable_to_non_nullable
              as int,
      asar: null == asar
          ? _value.asar
          : asar // ignore: cast_nullable_to_non_nullable
              as int,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int,
      prayers: null == prayers
          ? _value.prayers
          : prayers // ignore: cast_nullable_to_non_nullable
              as Map<String, Prayer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayersImplCopyWith<$Res> implements $PrayersCopyWith<$Res> {
  factory _$$PrayersImplCopyWith(
          _$PrayersImpl value, $Res Function(_$PrayersImpl) then) =
      __$$PrayersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fajr,
      int zuhr,
      int asar,
      int maghrib,
      int isha,
      Map<String, Prayer> prayers});
}

/// @nodoc
class __$$PrayersImplCopyWithImpl<$Res>
    extends _$PrayersCopyWithImpl<$Res, _$PrayersImpl>
    implements _$$PrayersImplCopyWith<$Res> {
  __$$PrayersImplCopyWithImpl(
      _$PrayersImpl _value, $Res Function(_$PrayersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? zuhr = null,
    Object? asar = null,
    Object? maghrib = null,
    Object? isha = null,
    Object? prayers = null,
  }) {
    return _then(_$PrayersImpl(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int,
      zuhr: null == zuhr
          ? _value.zuhr
          : zuhr // ignore: cast_nullable_to_non_nullable
              as int,
      asar: null == asar
          ? _value.asar
          : asar // ignore: cast_nullable_to_non_nullable
              as int,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int,
      prayers: null == prayers
          ? _value._prayers
          : prayers // ignore: cast_nullable_to_non_nullable
              as Map<String, Prayer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayersImpl extends _Prayers with DiagnosticableTreeMixin {
  const _$PrayersImpl(
      {required this.fajr,
      required this.zuhr,
      required this.asar,
      required this.maghrib,
      required this.isha,
      final Map<String, Prayer> prayers = const <String, Prayer>{}})
      : _prayers = prayers,
        super._();

  factory _$PrayersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayersImplFromJson(json);

  @override
  final int fajr;
  @override
  final int zuhr;
  @override
  final int asar;
  @override
  final int maghrib;
  @override
  final int isha;
  final Map<String, Prayer> _prayers;
  @override
  @JsonKey()
  Map<String, Prayer> get prayers {
    if (_prayers is EqualUnmodifiableMapView) return _prayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prayers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Prayers.raw(fajr: $fajr, zuhr: $zuhr, asar: $asar, maghrib: $maghrib, isha: $isha, prayers: $prayers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Prayers.raw'))
      ..add(DiagnosticsProperty('fajr', fajr))
      ..add(DiagnosticsProperty('zuhr', zuhr))
      ..add(DiagnosticsProperty('asar', asar))
      ..add(DiagnosticsProperty('maghrib', maghrib))
      ..add(DiagnosticsProperty('isha', isha))
      ..add(DiagnosticsProperty('prayers', prayers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayersImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.zuhr, zuhr) || other.zuhr == zuhr) &&
            (identical(other.asar, asar) || other.asar == asar) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            const DeepCollectionEquality().equals(other._prayers, _prayers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, zuhr, asar, maghrib, isha,
      const DeepCollectionEquality().hash(_prayers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayersImplCopyWith<_$PrayersImpl> get copyWith =>
      __$$PrayersImplCopyWithImpl<_$PrayersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int fajr, int zuhr, int asar, int maghrib,
            int isha, Map<String, Prayer> prayers)
        raw,
  }) {
    return raw(fajr, zuhr, asar, maghrib, isha, prayers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int fajr, int zuhr, int asar, int maghrib, int isha,
            Map<String, Prayer> prayers)?
        raw,
  }) {
    return raw?.call(fajr, zuhr, asar, maghrib, isha, prayers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int fajr, int zuhr, int asar, int maghrib, int isha,
            Map<String, Prayer> prayers)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(fajr, zuhr, asar, maghrib, isha, prayers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Prayers value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Prayers value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Prayers value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayersImplToJson(
      this,
    );
  }
}

abstract class _Prayers extends Prayers {
  const factory _Prayers(
      {required final int fajr,
      required final int zuhr,
      required final int asar,
      required final int maghrib,
      required final int isha,
      final Map<String, Prayer> prayers}) = _$PrayersImpl;
  const _Prayers._() : super._();

  factory _Prayers.fromJson(Map<String, dynamic> json) = _$PrayersImpl.fromJson;

  @override
  int get fajr;
  @override
  int get zuhr;
  @override
  int get asar;
  @override
  int get maghrib;
  @override
  int get isha;
  @override
  Map<String, Prayer> get prayers;
  @override
  @JsonKey(ignore: true)
  _$$PrayersImplCopyWith<_$PrayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prayer _$PrayerFromJson(Map<String, dynamic> json) {
  return _Prayer.fromJson(json);
}

/// @nodoc
mixin _$Prayer {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerCopyWith<Prayer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerCopyWith<$Res> {
  factory $PrayerCopyWith(Prayer value, $Res Function(Prayer) then) =
      _$PrayerCopyWithImpl<$Res, Prayer>;
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class _$PrayerCopyWithImpl<$Res, $Val extends Prayer>
    implements $PrayerCopyWith<$Res> {
  _$PrayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerImplCopyWith<$Res> implements $PrayerCopyWith<$Res> {
  factory _$$PrayerImplCopyWith(
          _$PrayerImpl value, $Res Function(_$PrayerImpl) then) =
      __$$PrayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class __$$PrayerImplCopyWithImpl<$Res>
    extends _$PrayerCopyWithImpl<$Res, _$PrayerImpl>
    implements _$$PrayerImplCopyWith<$Res> {
  __$$PrayerImplCopyWithImpl(
      _$PrayerImpl _value, $Res Function(_$PrayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$PrayerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerImpl extends _Prayer with DiagnosticableTreeMixin {
  const _$PrayerImpl({this.name = '', this.count = 0}) : super._();

  factory _$PrayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Prayer(name: $name, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Prayer'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerImplCopyWith<_$PrayerImpl> get copyWith =>
      __$$PrayerImplCopyWithImpl<_$PrayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerImplToJson(
      this,
    );
  }
}

abstract class _Prayer extends Prayer {
  const factory _Prayer({final String name, final int count}) = _$PrayerImpl;
  const _Prayer._() : super._();

  factory _Prayer.fromJson(Map<String, dynamic> json) = _$PrayerImpl.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$PrayerImplCopyWith<_$PrayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
