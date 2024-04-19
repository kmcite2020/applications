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
  @MaterialColorConverter()
  MaterialColor get materialColor => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  double get textScaleFactor => throw _privateConstructorUsedError;
  double get borderRadius => throw _privateConstructorUsedError;
  double get padding => throw _privateConstructorUsedError;

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
      {@MaterialColorConverter() MaterialColor materialColor,
      ThemeMode themeMode,
      int pageIndex,
      double textScaleFactor,
      double borderRadius,
      double padding});
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
    Object? materialColor = null,
    Object? themeMode = null,
    Object? pageIndex = null,
    Object? textScaleFactor = null,
    Object? borderRadius = null,
    Object? padding = null,
  }) {
    return _then(_value.copyWith(
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      textScaleFactor: null == textScaleFactor
          ? _value.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
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
      {@MaterialColorConverter() MaterialColor materialColor,
      ThemeMode themeMode,
      int pageIndex,
      double textScaleFactor,
      double borderRadius,
      double padding});
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
    Object? materialColor = null,
    Object? themeMode = null,
    Object? pageIndex = null,
    Object? textScaleFactor = null,
    Object? borderRadius = null,
    Object? padding = null,
  }) {
    return _then(_$SettingsImpl(
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      textScaleFactor: null == textScaleFactor
          ? _value.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl extends _Settings with DiagnosticableTreeMixin {
  const _$SettingsImpl(
      {@MaterialColorConverter() this.materialColor = Colors.blueGrey,
      this.themeMode = ThemeMode.system,
      this.pageIndex = 0,
      this.textScaleFactor = 1.0,
      this.borderRadius = 8.0,
      this.padding = 8.0})
      : super._();

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor materialColor;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  @JsonKey()
  final double textScaleFactor;
  @override
  @JsonKey()
  final double borderRadius;
  @override
  @JsonKey()
  final double padding;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Settings(materialColor: $materialColor, themeMode: $themeMode, pageIndex: $pageIndex, textScaleFactor: $textScaleFactor, borderRadius: $borderRadius, padding: $padding)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Settings'))
      ..add(DiagnosticsProperty('materialColor', materialColor))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('pageIndex', pageIndex))
      ..add(DiagnosticsProperty('textScaleFactor', textScaleFactor))
      ..add(DiagnosticsProperty('borderRadius', borderRadius))
      ..add(DiagnosticsProperty('padding', padding));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.textScaleFactor, textScaleFactor) ||
                other.textScaleFactor == textScaleFactor) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, materialColor, themeMode,
      pageIndex, textScaleFactor, borderRadius, padding);

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
      {@MaterialColorConverter() final MaterialColor materialColor,
      final ThemeMode themeMode,
      final int pageIndex,
      final double textScaleFactor,
      final double borderRadius,
      final double padding}) = _$SettingsImpl;
  const _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  @MaterialColorConverter()
  MaterialColor get materialColor;
  @override
  ThemeMode get themeMode;
  @override
  int get pageIndex;
  @override
  double get textScaleFactor;
  @override
  double get borderRadius;
  @override
  double get padding;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialColor materialColor) material,
    required TResult Function(ThemeMode themeMode) themeMode,
    required TResult Function(double borderRadius) borderRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialColor materialColor)? material,
    TResult? Function(ThemeMode themeMode)? themeMode,
    TResult? Function(double borderRadius)? borderRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialColor materialColor)? material,
    TResult Function(ThemeMode themeMode)? themeMode,
    TResult Function(double borderRadius)? borderRadius,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventMaterial value) material,
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventMaterial value)? material,
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventMaterial value)? material,
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
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
abstract class _$$SettingsEventMaterialImplCopyWith<$Res> {
  factory _$$SettingsEventMaterialImplCopyWith(
          _$SettingsEventMaterialImpl value,
          $Res Function(_$SettingsEventMaterialImpl) then) =
      __$$SettingsEventMaterialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialColor materialColor});
}

/// @nodoc
class __$$SettingsEventMaterialImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventMaterialImpl>
    implements _$$SettingsEventMaterialImplCopyWith<$Res> {
  __$$SettingsEventMaterialImplCopyWithImpl(_$SettingsEventMaterialImpl _value,
      $Res Function(_$SettingsEventMaterialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialColor = null,
  }) {
    return _then(_$SettingsEventMaterialImpl(
      null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ));
  }
}

/// @nodoc

class _$SettingsEventMaterialImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventMaterial {
  const _$SettingsEventMaterialImpl(this.materialColor);

  @override
  final MaterialColor materialColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.material(materialColor: $materialColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.material'))
      ..add(DiagnosticsProperty('materialColor', materialColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventMaterialImpl &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventMaterialImplCopyWith<_$SettingsEventMaterialImpl>
      get copyWith => __$$SettingsEventMaterialImplCopyWithImpl<
          _$SettingsEventMaterialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialColor materialColor) material,
    required TResult Function(ThemeMode themeMode) themeMode,
    required TResult Function(double borderRadius) borderRadius,
  }) {
    return material(materialColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialColor materialColor)? material,
    TResult? Function(ThemeMode themeMode)? themeMode,
    TResult? Function(double borderRadius)? borderRadius,
  }) {
    return material?.call(materialColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialColor materialColor)? material,
    TResult Function(ThemeMode themeMode)? themeMode,
    TResult Function(double borderRadius)? borderRadius,
    required TResult orElse(),
  }) {
    if (material != null) {
      return material(materialColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventMaterial value) material,
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
  }) {
    return material(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventMaterial value)? material,
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
  }) {
    return material?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventMaterial value)? material,
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    required TResult orElse(),
  }) {
    if (material != null) {
      return material(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventMaterial implements SettingsEvent {
  const factory _SettingsEventMaterial(final MaterialColor materialColor) =
      _$SettingsEventMaterialImpl;

  MaterialColor get materialColor;
  @JsonKey(ignore: true)
  _$$SettingsEventMaterialImplCopyWith<_$SettingsEventMaterialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventThemeModeImplCopyWith<$Res> {
  factory _$$SettingsEventThemeModeImplCopyWith(
          _$SettingsEventThemeModeImpl value,
          $Res Function(_$SettingsEventThemeModeImpl) then) =
      __$$SettingsEventThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
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
    Object? themeMode = null,
  }) {
    return _then(_$SettingsEventThemeModeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsEventThemeModeImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventThemeMode {
  const _$SettingsEventThemeModeImpl(this.themeMode);

  @override
  final ThemeMode themeMode;

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
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventThemeModeImplCopyWith<_$SettingsEventThemeModeImpl>
      get copyWith => __$$SettingsEventThemeModeImplCopyWithImpl<
          _$SettingsEventThemeModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialColor materialColor) material,
    required TResult Function(ThemeMode themeMode) themeMode,
    required TResult Function(double borderRadius) borderRadius,
  }) {
    return themeMode(this.themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialColor materialColor)? material,
    TResult? Function(ThemeMode themeMode)? themeMode,
    TResult? Function(double borderRadius)? borderRadius,
  }) {
    return themeMode?.call(this.themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialColor materialColor)? material,
    TResult Function(ThemeMode themeMode)? themeMode,
    TResult Function(double borderRadius)? borderRadius,
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
    required TResult Function(_SettingsEventMaterial value) material,
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
  }) {
    return themeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventMaterial value)? material,
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
  }) {
    return themeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventMaterial value)? material,
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    required TResult orElse(),
  }) {
    if (themeMode != null) {
      return themeMode(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventThemeMode implements SettingsEvent {
  const factory _SettingsEventThemeMode(final ThemeMode themeMode) =
      _$SettingsEventThemeModeImpl;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$SettingsEventThemeModeImplCopyWith<_$SettingsEventThemeModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventBorderRadiusImplCopyWith<$Res> {
  factory _$$SettingsEventBorderRadiusImplCopyWith(
          _$SettingsEventBorderRadiusImpl value,
          $Res Function(_$SettingsEventBorderRadiusImpl) then) =
      __$$SettingsEventBorderRadiusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double borderRadius});
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
    Object? borderRadius = null,
  }) {
    return _then(_$SettingsEventBorderRadiusImpl(
      null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SettingsEventBorderRadiusImpl
    with DiagnosticableTreeMixin
    implements _SettingsEventBorderRadius {
  const _$SettingsEventBorderRadiusImpl(this.borderRadius);

  @override
  final double borderRadius;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.borderRadius(borderRadius: $borderRadius)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.borderRadius'))
      ..add(DiagnosticsProperty('borderRadius', borderRadius));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventBorderRadiusImpl &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventBorderRadiusImplCopyWith<_$SettingsEventBorderRadiusImpl>
      get copyWith => __$$SettingsEventBorderRadiusImplCopyWithImpl<
          _$SettingsEventBorderRadiusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialColor materialColor) material,
    required TResult Function(ThemeMode themeMode) themeMode,
    required TResult Function(double borderRadius) borderRadius,
  }) {
    return borderRadius(this.borderRadius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialColor materialColor)? material,
    TResult? Function(ThemeMode themeMode)? themeMode,
    TResult? Function(double borderRadius)? borderRadius,
  }) {
    return borderRadius?.call(this.borderRadius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialColor materialColor)? material,
    TResult Function(ThemeMode themeMode)? themeMode,
    TResult Function(double borderRadius)? borderRadius,
    required TResult orElse(),
  }) {
    if (borderRadius != null) {
      return borderRadius(this.borderRadius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventMaterial value) material,
    required TResult Function(_SettingsEventThemeMode value) themeMode,
    required TResult Function(_SettingsEventBorderRadius value) borderRadius,
  }) {
    return borderRadius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventMaterial value)? material,
    TResult? Function(_SettingsEventThemeMode value)? themeMode,
    TResult? Function(_SettingsEventBorderRadius value)? borderRadius,
  }) {
    return borderRadius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventMaterial value)? material,
    TResult Function(_SettingsEventThemeMode value)? themeMode,
    TResult Function(_SettingsEventBorderRadius value)? borderRadius,
    required TResult orElse(),
  }) {
    if (borderRadius != null) {
      return borderRadius(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventBorderRadius implements SettingsEvent {
  const factory _SettingsEventBorderRadius(final double borderRadius) =
      _$SettingsEventBorderRadiusImpl;

  double get borderRadius;
  @JsonKey(ignore: true)
  _$$SettingsEventBorderRadiusImplCopyWith<_$SettingsEventBorderRadiusImpl>
      get copyWith => throw _privateConstructorUsedError;
}
