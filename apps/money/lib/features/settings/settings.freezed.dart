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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @MaterialColorConverter()
  MaterialColor get materialColor => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  BorderRadiusEnum get borderRadiusEnum => throw _privateConstructorUsedError;
  PaddingEnum get paddingEnum => throw _privateConstructorUsedError;
  String? get backgroundImagePath => throw _privateConstructorUsedError;
  bool get useMaterial3 => throw _privateConstructorUsedError;
  String get font => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)?
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)?
        get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Settings value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Settings value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Settings value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
      @MaterialColorConverter() MaterialColor materialColor,
      int pageIndex,
      BorderRadiusEnum borderRadiusEnum,
      PaddingEnum paddingEnum,
      String? backgroundImagePath,
      bool useMaterial3,
      String font});
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
    Object? materialColor = null,
    Object? pageIndex = null,
    Object? borderRadiusEnum = null,
    Object? paddingEnum = null,
    Object? backgroundImagePath = freezed,
    Object? useMaterial3 = null,
    Object? font = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      borderRadiusEnum: null == borderRadiusEnum
          ? _value.borderRadiusEnum
          : borderRadiusEnum // ignore: cast_nullable_to_non_nullable
              as BorderRadiusEnum,
      paddingEnum: null == paddingEnum
          ? _value.paddingEnum
          : paddingEnum // ignore: cast_nullable_to_non_nullable
              as PaddingEnum,
      backgroundImagePath: freezed == backgroundImagePath
          ? _value.backgroundImagePath
          : backgroundImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      useMaterial3: null == useMaterial3
          ? _value.useMaterial3
          : useMaterial3 // ignore: cast_nullable_to_non_nullable
              as bool,
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
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
      @MaterialColorConverter() MaterialColor materialColor,
      int pageIndex,
      BorderRadiusEnum borderRadiusEnum,
      PaddingEnum paddingEnum,
      String? backgroundImagePath,
      bool useMaterial3,
      String font});
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
    Object? materialColor = null,
    Object? pageIndex = null,
    Object? borderRadiusEnum = null,
    Object? paddingEnum = null,
    Object? backgroundImagePath = freezed,
    Object? useMaterial3 = null,
    Object? font = null,
  }) {
    return _then(_$SettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      borderRadiusEnum: null == borderRadiusEnum
          ? _value.borderRadiusEnum
          : borderRadiusEnum // ignore: cast_nullable_to_non_nullable
              as BorderRadiusEnum,
      paddingEnum: null == paddingEnum
          ? _value.paddingEnum
          : paddingEnum // ignore: cast_nullable_to_non_nullable
              as PaddingEnum,
      backgroundImagePath: freezed == backgroundImagePath
          ? _value.backgroundImagePath
          : backgroundImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      useMaterial3: null == useMaterial3
          ? _value.useMaterial3
          : useMaterial3 // ignore: cast_nullable_to_non_nullable
              as bool,
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl extends _Settings with DiagnosticableTreeMixin {
  const _$SettingsImpl(
      {required this.themeMode,
      @MaterialColorConverter() required this.materialColor,
      required this.pageIndex,
      required this.borderRadiusEnum,
      required this.paddingEnum,
      required this.backgroundImagePath,
      required this.useMaterial3,
      required this.font})
      : super._();

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  final ThemeMode themeMode;
  @override
  @MaterialColorConverter()
  final MaterialColor materialColor;
  @override
  final int pageIndex;
  @override
  final BorderRadiusEnum borderRadiusEnum;
  @override
  final PaddingEnum paddingEnum;
  @override
  final String? backgroundImagePath;
  @override
  final bool useMaterial3;
  @override
  final String font;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Settings.get(themeMode: $themeMode, materialColor: $materialColor, pageIndex: $pageIndex, borderRadiusEnum: $borderRadiusEnum, paddingEnum: $paddingEnum, backgroundImagePath: $backgroundImagePath, useMaterial3: $useMaterial3, font: $font)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Settings.get'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('materialColor', materialColor))
      ..add(DiagnosticsProperty('pageIndex', pageIndex))
      ..add(DiagnosticsProperty('borderRadiusEnum', borderRadiusEnum))
      ..add(DiagnosticsProperty('paddingEnum', paddingEnum))
      ..add(DiagnosticsProperty('backgroundImagePath', backgroundImagePath))
      ..add(DiagnosticsProperty('useMaterial3', useMaterial3))
      ..add(DiagnosticsProperty('font', font));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.borderRadiusEnum, borderRadiusEnum) ||
                other.borderRadiusEnum == borderRadiusEnum) &&
            (identical(other.paddingEnum, paddingEnum) ||
                other.paddingEnum == paddingEnum) &&
            (identical(other.backgroundImagePath, backgroundImagePath) ||
                other.backgroundImagePath == backgroundImagePath) &&
            (identical(other.useMaterial3, useMaterial3) ||
                other.useMaterial3 == useMaterial3) &&
            (identical(other.font, font) || other.font == font));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      themeMode,
      materialColor,
      pageIndex,
      borderRadiusEnum,
      paddingEnum,
      backgroundImagePath,
      useMaterial3,
      font);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)
        get,
  }) {
    return get(themeMode, materialColor, pageIndex, borderRadiusEnum,
        paddingEnum, backgroundImagePath, useMaterial3, font);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)?
        get,
  }) {
    return get?.call(themeMode, materialColor, pageIndex, borderRadiusEnum,
        paddingEnum, backgroundImagePath, useMaterial3, font);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ThemeMode themeMode,
            @MaterialColorConverter() MaterialColor materialColor,
            int pageIndex,
            BorderRadiusEnum borderRadiusEnum,
            PaddingEnum paddingEnum,
            String? backgroundImagePath,
            bool useMaterial3,
            String font)?
        get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(themeMode, materialColor, pageIndex, borderRadiusEnum,
          paddingEnum, backgroundImagePath, useMaterial3, font);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Settings value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Settings value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Settings value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings extends Settings {
  const factory _Settings(
      {required final ThemeMode themeMode,
      @MaterialColorConverter() required final MaterialColor materialColor,
      required final int pageIndex,
      required final BorderRadiusEnum borderRadiusEnum,
      required final PaddingEnum paddingEnum,
      required final String? backgroundImagePath,
      required final bool useMaterial3,
      required final String font}) = _$SettingsImpl;
  const _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  @MaterialColorConverter()
  MaterialColor get materialColor;
  @override
  int get pageIndex;
  @override
  BorderRadiusEnum get borderRadiusEnum;
  @override
  PaddingEnum get paddingEnum;
  @override
  String? get backgroundImagePath;
  @override
  bool get useMaterial3;
  @override
  String get font;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
