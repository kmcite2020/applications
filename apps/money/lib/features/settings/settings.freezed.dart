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

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsEventThemeModeImplCopyWith<$Res> {
  factory _$$SettingsEventThemeModeImplCopyWith(
          _$SettingsEventThemeModeImpl value,
          $Res Function(_$SettingsEventThemeModeImpl) then) =
      __$$SettingsEventThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic themeMode});
}

/// @nodoc
class __$$SettingsEventThemeModeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventThemeModeImpl>
    implements _$$SettingsEventThemeModeImplCopyWith<$Res> {
  __$$SettingsEventThemeModeImplCopyWithImpl(
      _$SettingsEventThemeModeImpl _value,
      $Res Function(_$SettingsEventThemeModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_$SettingsEventThemeModeImpl(
      freezed == themeMode ? _value.themeMode! : themeMode,
    ));
  }
}

/// @nodoc

class _$SettingsEventThemeModeImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventThemeMode {
  const _$SettingsEventThemeModeImpl(this.themeMode);

  @override
  final dynamic themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.themeMode(themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.themeMode'))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventThemeModeImpl &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventThemeModeImplCopyWith<_$SettingsEventThemeModeImpl>
      get copyWith => __$$SettingsEventThemeModeImplCopyWithImpl<
          _$SettingsEventThemeModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return themeMode(this.themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return themeMode?.call(this.themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (themeMode != null) {
      return themeMode(this.themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return themeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return themeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (themeMode != null) {
      return themeMode(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventThemeMode implements SettingsEvent {
  const factory _SettingsEventThemeMode(final dynamic themeMode) =
      _$SettingsEventThemeModeImpl;

  dynamic get themeMode;
  @JsonKey(ignore: true)
  _$$SettingsEventThemeModeImplCopyWith<_$SettingsEventThemeModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventColorImplCopyWith<$Res> {
  factory _$$SettingsEventColorImplCopyWith(_$SettingsEventColorImpl value,
          $Res Function(_$SettingsEventColorImpl) then) =
      __$$SettingsEventColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic materialColor});
}

/// @nodoc
class __$$SettingsEventColorImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventColorImpl>
    implements _$$SettingsEventColorImplCopyWith<$Res> {
  __$$SettingsEventColorImplCopyWithImpl(_$SettingsEventColorImpl _value,
      $Res Function(_$SettingsEventColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialColor = freezed,
  }) {
    return _then(_$SettingsEventColorImpl(
      freezed == materialColor ? _value.materialColor! : materialColor,
    ));
  }
}

/// @nodoc

class _$SettingsEventColorImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventColor {
  const _$SettingsEventColorImpl(this.materialColor);

  @override
  final dynamic materialColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.color(materialColor: $materialColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.color'))
      ..add(DiagnosticsProperty('materialColor', materialColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventColorImpl &&
            const DeepCollectionEquality()
                .equals(other.materialColor, materialColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(materialColor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventColorImplCopyWith<_$SettingsEventColorImpl> get copyWith =>
      __$$SettingsEventColorImplCopyWithImpl<_$SettingsEventColorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return color(materialColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return color?.call(materialColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(materialColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventColor implements SettingsEvent {
  const factory _SettingsEventColor(final dynamic materialColor) =
      _$SettingsEventColorImpl;

  dynamic get materialColor;
  @JsonKey(ignore: true)
  _$$SettingsEventColorImplCopyWith<_$SettingsEventColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventUseMaterial3ImplCopyWith<$Res> {
  factory _$$SettingsEventUseMaterial3ImplCopyWith(
          _$SettingsEventUseMaterial3Impl value,
          $Res Function(_$SettingsEventUseMaterial3Impl) then) =
      __$$SettingsEventUseMaterial3ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic useMaterial3});
}

/// @nodoc
class __$$SettingsEventUseMaterial3ImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventUseMaterial3Impl>
    implements _$$SettingsEventUseMaterial3ImplCopyWith<$Res> {
  __$$SettingsEventUseMaterial3ImplCopyWithImpl(
      _$SettingsEventUseMaterial3Impl _value,
      $Res Function(_$SettingsEventUseMaterial3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useMaterial3 = freezed,
  }) {
    return _then(_$SettingsEventUseMaterial3Impl(
      freezed == useMaterial3 ? _value.useMaterial3! : useMaterial3,
    ));
  }
}

/// @nodoc

class _$SettingsEventUseMaterial3Impl
    with DiagnosticableTreeMixin
    implements _SettingsEventUseMaterial3 {
  const _$SettingsEventUseMaterial3Impl(this.useMaterial3);

  @override
  final dynamic useMaterial3;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.useMaterial3(useMaterial3: $useMaterial3)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.useMaterial3'))
      ..add(DiagnosticsProperty('useMaterial3', useMaterial3));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventUseMaterial3Impl &&
            const DeepCollectionEquality()
                .equals(other.useMaterial3, useMaterial3));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(useMaterial3));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventUseMaterial3ImplCopyWith<_$SettingsEventUseMaterial3Impl>
      get copyWith => __$$SettingsEventUseMaterial3ImplCopyWithImpl<
          _$SettingsEventUseMaterial3Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return useMaterial3(this.useMaterial3);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return useMaterial3?.call(this.useMaterial3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (useMaterial3 != null) {
      return useMaterial3(this.useMaterial3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return useMaterial3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return useMaterial3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (useMaterial3 != null) {
      return useMaterial3(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventUseMaterial3 implements SettingsEvent {
  const factory _SettingsEventUseMaterial3(final dynamic useMaterial3) =
      _$SettingsEventUseMaterial3Impl;

  dynamic get useMaterial3;
  @JsonKey(ignore: true)
  _$$SettingsEventUseMaterial3ImplCopyWith<_$SettingsEventUseMaterial3Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventBackgroundImageImplCopyWith<$Res> {
  factory _$$SettingsEventBackgroundImageImplCopyWith(
          _$SettingsEventBackgroundImageImpl value,
          $Res Function(_$SettingsEventBackgroundImageImpl) then) =
      __$$SettingsEventBackgroundImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic backgroundImagePath});
}

/// @nodoc
class __$$SettingsEventBackgroundImageImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsEventBackgroundImageImpl>
    implements _$$SettingsEventBackgroundImageImplCopyWith<$Res> {
  __$$SettingsEventBackgroundImageImplCopyWithImpl(
      _$SettingsEventBackgroundImageImpl _value,
      $Res Function(_$SettingsEventBackgroundImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImagePath = freezed,
  }) {
    return _then(_$SettingsEventBackgroundImageImpl(
      freezed == backgroundImagePath
          ? _value.backgroundImagePath!
          : backgroundImagePath,
    ));
  }
}

/// @nodoc

class _$SettingsEventBackgroundImageImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventBackgroundImage {
  const _$SettingsEventBackgroundImageImpl(this.backgroundImagePath);

  @override
  final dynamic backgroundImagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.backgroundImagePath(backgroundImagePath: $backgroundImagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.backgroundImagePath'))
      ..add(DiagnosticsProperty('backgroundImagePath', backgroundImagePath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventBackgroundImageImpl &&
            const DeepCollectionEquality()
                .equals(other.backgroundImagePath, backgroundImagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(backgroundImagePath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventBackgroundImageImplCopyWith<
          _$SettingsEventBackgroundImageImpl>
      get copyWith => __$$SettingsEventBackgroundImageImplCopyWithImpl<
          _$SettingsEventBackgroundImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return backgroundImagePath(this.backgroundImagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return backgroundImagePath?.call(this.backgroundImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (backgroundImagePath != null) {
      return backgroundImagePath(this.backgroundImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return backgroundImagePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return backgroundImagePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (backgroundImagePath != null) {
      return backgroundImagePath(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventBackgroundImage implements SettingsEvent {
  const factory _SettingsEventBackgroundImage(
      final dynamic backgroundImagePath) = _$SettingsEventBackgroundImageImpl;

  dynamic get backgroundImagePath;
  @JsonKey(ignore: true)
  _$$SettingsEventBackgroundImageImplCopyWith<
          _$SettingsEventBackgroundImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventPaddingImplCopyWith<$Res> {
  factory _$$SettingsEventPaddingImplCopyWith(_$SettingsEventPaddingImpl value,
          $Res Function(_$SettingsEventPaddingImpl) then) =
      __$$SettingsEventPaddingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic paddingEnum});
}

/// @nodoc
class __$$SettingsEventPaddingImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventPaddingImpl>
    implements _$$SettingsEventPaddingImplCopyWith<$Res> {
  __$$SettingsEventPaddingImplCopyWithImpl(_$SettingsEventPaddingImpl _value,
      $Res Function(_$SettingsEventPaddingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paddingEnum = freezed,
  }) {
    return _then(_$SettingsEventPaddingImpl(
      freezed == paddingEnum ? _value.paddingEnum! : paddingEnum,
    ));
  }
}

/// @nodoc

class _$SettingsEventPaddingImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventPadding {
  const _$SettingsEventPaddingImpl(this.paddingEnum);

  @override
  final dynamic paddingEnum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.padding(paddingEnum: $paddingEnum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.padding'))
      ..add(DiagnosticsProperty('paddingEnum', paddingEnum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventPaddingImpl &&
            const DeepCollectionEquality()
                .equals(other.paddingEnum, paddingEnum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(paddingEnum));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventPaddingImplCopyWith<_$SettingsEventPaddingImpl>
      get copyWith =>
          __$$SettingsEventPaddingImplCopyWithImpl<_$SettingsEventPaddingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return padding(paddingEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return padding?.call(paddingEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (padding != null) {
      return padding(paddingEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return padding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return padding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (padding != null) {
      return padding(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventPadding implements SettingsEvent {
  const factory _SettingsEventPadding(final dynamic paddingEnum) =
      _$SettingsEventPaddingImpl;

  dynamic get paddingEnum;
  @JsonKey(ignore: true)
  _$$SettingsEventPaddingImplCopyWith<_$SettingsEventPaddingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventBorderRadiusImplCopyWith<$Res> {
  factory _$$SettingsEventBorderRadiusImplCopyWith(
          _$SettingsEventBorderRadiusImpl value,
          $Res Function(_$SettingsEventBorderRadiusImpl) then) =
      __$$SettingsEventBorderRadiusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic borderRadiusEnum});
}

/// @nodoc
class __$$SettingsEventBorderRadiusImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventBorderRadiusImpl>
    implements _$$SettingsEventBorderRadiusImplCopyWith<$Res> {
  __$$SettingsEventBorderRadiusImplCopyWithImpl(
      _$SettingsEventBorderRadiusImpl _value,
      $Res Function(_$SettingsEventBorderRadiusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderRadiusEnum = freezed,
  }) {
    return _then(_$SettingsEventBorderRadiusImpl(
      freezed == borderRadiusEnum ? _value.borderRadiusEnum! : borderRadiusEnum,
    ));
  }
}

/// @nodoc

class _$SettingsEventBorderRadiusImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventBorderRadius {
  const _$SettingsEventBorderRadiusImpl(this.borderRadiusEnum);

  @override
  final dynamic borderRadiusEnum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.borderRadius(borderRadiusEnum: $borderRadiusEnum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.borderRadius'))
      ..add(DiagnosticsProperty('borderRadiusEnum', borderRadiusEnum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventBorderRadiusImpl &&
            const DeepCollectionEquality()
                .equals(other.borderRadiusEnum, borderRadiusEnum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(borderRadiusEnum));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventBorderRadiusImplCopyWith<_$SettingsEventBorderRadiusImpl>
      get copyWith => __$$SettingsEventBorderRadiusImplCopyWithImpl<
          _$SettingsEventBorderRadiusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return borderRadius(borderRadiusEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return borderRadius?.call(borderRadiusEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (borderRadius != null) {
      return borderRadius(borderRadiusEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return borderRadius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return borderRadius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (borderRadius != null) {
      return borderRadius(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventBorderRadius implements SettingsEvent {
  const factory _SettingsEventBorderRadius(final dynamic borderRadiusEnum) =
      _$SettingsEventBorderRadiusImpl;

  dynamic get borderRadiusEnum;
  @JsonKey(ignore: true)
  _$$SettingsEventBorderRadiusImplCopyWith<_$SettingsEventBorderRadiusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventFontImplCopyWith<$Res> {
  factory _$$SettingsEventFontImplCopyWith(_$SettingsEventFontImpl value,
          $Res Function(_$SettingsEventFontImpl) then) =
      __$$SettingsEventFontImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic font});
}

/// @nodoc
class __$$SettingsEventFontImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventFontImpl>
    implements _$$SettingsEventFontImplCopyWith<$Res> {
  __$$SettingsEventFontImplCopyWithImpl(_$SettingsEventFontImpl _value,
      $Res Function(_$SettingsEventFontImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
  }) {
    return _then(_$SettingsEventFontImpl(
      freezed == font ? _value.font! : font,
    ));
  }
}

/// @nodoc

class _$SettingsEventFontImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventFont {
  const _$SettingsEventFontImpl(this.font);

  @override
  final dynamic font;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.font(font: $font)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.font'))
      ..add(DiagnosticsProperty('font', font));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventFontImpl &&
            const DeepCollectionEquality().equals(other.font, font));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(font));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventFontImplCopyWith<_$SettingsEventFontImpl> get copyWith =>
      __$$SettingsEventFontImplCopyWithImpl<_$SettingsEventFontImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic themeMode) themeMode,
    required TResult Function(dynamic materialColor) color,
    required TResult Function(dynamic useMaterial3) useMaterial3,
    required TResult Function(dynamic backgroundImagePath) backgroundImagePath,
    required TResult Function(dynamic paddingEnum) padding,
    required TResult Function(dynamic borderRadiusEnum) borderRadius,
    required TResult Function(dynamic font) font,
  }) {
    return font(this.font);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic themeMode)? themeMode,
    TResult? Function(dynamic materialColor)? color,
    TResult? Function(dynamic useMaterial3)? useMaterial3,
    TResult? Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult? Function(dynamic paddingEnum)? padding,
    TResult? Function(dynamic borderRadiusEnum)? borderRadius,
    TResult? Function(dynamic font)? font,
  }) {
    return font?.call(this.font);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic themeMode)? themeMode,
    TResult Function(dynamic materialColor)? color,
    TResult Function(dynamic useMaterial3)? useMaterial3,
    TResult Function(dynamic backgroundImagePath)? backgroundImagePath,
    TResult Function(dynamic paddingEnum)? padding,
    TResult Function(dynamic borderRadiusEnum)? borderRadius,
    TResult Function(dynamic font)? font,
    required TResult orElse(),
  }) {
    if (font != null) {
      return font(this.font);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventColor value) color,
    required TResult Function(_SettingsEventUseMaterial3 value) useMaterial3,
    required TResult Function(_SettingsEventBackgroundImage value)
        backgroundImagePath,
    required TResult Function(_SettingsEventPadding value) padding,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
    required TResult Function(_SettingsEventFont value) font,
  }) {
    return font(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventColor value)? color,
    TResult? Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult? Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult? Function(_SettingsEventPadding value)? padding,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult? Function(_SettingsEventFont value)? font,
  }) {
    return font?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventColor value)? color,
    TResult Function(_SettingsEventUseMaterial3 value)? useMaterial3,
    TResult Function(_SettingsEventBackgroundImage value)? backgroundImagePath,
    TResult Function(_SettingsEventPadding value)? padding,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    TResult Function(_SettingsEventFont value)? font,
    required TResult orElse(),
  }) {
    if (font != null) {
      return font(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventFont implements SettingsEvent {
  const factory _SettingsEventFont(final dynamic font) =
      _$SettingsEventFontImpl;

  dynamic get font;
  @JsonKey(ignore: true)
  _$$SettingsEventFontImplCopyWith<_$SettingsEventFontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
