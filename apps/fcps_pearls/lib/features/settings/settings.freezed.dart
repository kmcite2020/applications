// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  double get borderRadius => throw _privateConstructorUsedError;
  double get padding => throw _privateConstructorUsedError;
  bool get studioMode => throw _privateConstructorUsedError;
  @MaterialColorConverter()
  MaterialColor get materialColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      double borderRadius,
      double padding,
      bool studioMode,
      @MaterialColorConverter() MaterialColor materialColor});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? borderRadius = null,
    Object? padding = null,
    Object? studioMode = null,
    Object? materialColor = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      studioMode: null == studioMode
          ? _value.studioMode
          : studioMode // ignore: cast_nullable_to_non_nullable
              as bool,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      double borderRadius,
      double padding,
      bool studioMode,
      @MaterialColorConverter() MaterialColor materialColor});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? borderRadius = null,
    Object? padding = null,
    Object? studioMode = null,
    Object? materialColor = null,
  }) {
    return _then(_$SettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      studioMode: null == studioMode
          ? _value.studioMode
          : studioMode // ignore: cast_nullable_to_non_nullable
              as bool,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl extends _Settings {
  const _$SettingsImpl(
      {this.themeMode = ThemeMode.system,
      this.borderRadius = 8,
      this.padding = 8,
      this.studioMode = false,
      @MaterialColorConverter() this.materialColor = Colors.red})
      : super._();

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final double borderRadius;
  @override
  @JsonKey()
  final double padding;
  @override
  @JsonKey()
  final bool studioMode;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor materialColor;

  @override
  String toString() {
    return 'Settings(themeMode: $themeMode, borderRadius: $borderRadius, padding: $padding, studioMode: $studioMode, materialColor: $materialColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.studioMode, studioMode) ||
                other.studioMode == studioMode) &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, themeMode, borderRadius, padding, studioMode, materialColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings extends Settings {
  const factory _Settings(
          {final ThemeMode themeMode,
          final double borderRadius,
          final double padding,
          final bool studioMode,
          @MaterialColorConverter() final MaterialColor materialColor}) =
      _$SettingsImpl;
  const _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  double get borderRadius;
  @override
  double get padding;
  @override
  bool get studioMode;
  @override
  @MaterialColorConverter()
  MaterialColor get materialColor;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
