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

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get font => throw _privateConstructorUsedError;
  @MaterialColorSerializer()
  MaterialColor get materialColor => throw _privateConstructorUsedError;
  double get padding => throw _privateConstructorUsedError;
  double get borderRadius => throw _privateConstructorUsedError;
  AvailableApps? get currentApp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      String font,
      @MaterialColorSerializer() MaterialColor materialColor,
      double padding,
      double borderRadius,
      AvailableApps? currentApp});
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? font = null,
    Object? materialColor = null,
    Object? padding = null,
    Object? borderRadius = null,
    Object? currentApp = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      currentApp: freezed == currentApp
          ? _value.currentApp
          : currentApp // ignore: cast_nullable_to_non_nullable
              as AvailableApps?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingModelCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$_SettingModelCopyWith(
          _$_SettingModel value, $Res Function(_$_SettingModel) then) =
      __$$_SettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      String font,
      @MaterialColorSerializer() MaterialColor materialColor,
      double padding,
      double borderRadius,
      AvailableApps? currentApp});
}

/// @nodoc
class __$$_SettingModelCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$_SettingModel>
    implements _$$_SettingModelCopyWith<$Res> {
  __$$_SettingModelCopyWithImpl(
      _$_SettingModel _value, $Res Function(_$_SettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? font = null,
    Object? materialColor = null,
    Object? padding = null,
    Object? borderRadius = null,
    Object? currentApp = freezed,
  }) {
    return _then(_$_SettingModel(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
      materialColor: null == materialColor
          ? _value.materialColor
          : materialColor // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      currentApp: freezed == currentApp
          ? _value.currentApp
          : currentApp // ignore: cast_nullable_to_non_nullable
              as AvailableApps?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingModel extends _SettingModel with DiagnosticableTreeMixin {
  const _$_SettingModel(
      {required this.themeMode,
      required this.font,
      @MaterialColorSerializer() required this.materialColor,
      required this.padding,
      required this.borderRadius,
      required this.currentApp})
      : super._();

  factory _$_SettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingModelFromJson(json);

  @override
  final ThemeMode themeMode;
  @override
  final String font;
  @override
  @MaterialColorSerializer()
  final MaterialColor materialColor;
  @override
  final double padding;
  @override
  final double borderRadius;
  @override
  final AvailableApps? currentApp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsModel(themeMode: $themeMode, font: $font, materialColor: $materialColor, padding: $padding, borderRadius: $borderRadius, currentApp: $currentApp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsModel'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('font', font))
      ..add(DiagnosticsProperty('materialColor', materialColor))
      ..add(DiagnosticsProperty('padding', padding))
      ..add(DiagnosticsProperty('borderRadius', borderRadius))
      ..add(DiagnosticsProperty('currentApp', currentApp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingModel &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.materialColor, materialColor) ||
                other.materialColor == materialColor) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.currentApp, currentApp) ||
                other.currentApp == currentApp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, font, materialColor,
      padding, borderRadius, currentApp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      __$$_SettingModelCopyWithImpl<_$_SettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingModelToJson(
      this,
    );
  }
}

abstract class _SettingModel extends SettingsModel {
  const factory _SettingModel(
      {required final ThemeMode themeMode,
      required final String font,
      @MaterialColorSerializer() required final MaterialColor materialColor,
      required final double padding,
      required final double borderRadius,
      required final AvailableApps? currentApp}) = _$_SettingModel;
  const _SettingModel._() : super._();

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$_SettingModel.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  String get font;
  @override
  @MaterialColorSerializer()
  MaterialColor get materialColor;
  @override
  double get padding;
  @override
  double get borderRadius;
  @override
  AvailableApps? get currentApp;
  @override
  @JsonKey(ignore: true)
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
