// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SettingsCWProxy {
  Settings themeMode(ThemeMode themeMode);

  Settings materialColor(MaterialColor materialColor);

  Settings padding(double padding);

  Settings elevation(double elevation);

  Settings height(double height);

  Settings areMoreColors(bool areMoreColors);

  Settings isFirstStart(bool isFirstStart);

  Settings borderRadius(double borderRadius);

  Settings textScaleFactor(double textScaleFactor);

  Settings headlineTextSize(double headlineTextSize);

  Settings pageIndex(int pageIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    ThemeMode? themeMode,
    MaterialColor? materialColor,
    double? padding,
    double? elevation,
    double? height,
    bool? areMoreColors,
    bool? isFirstStart,
    double? borderRadius,
    double? textScaleFactor,
    double? headlineTextSize,
    int? pageIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSettings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSettings.copyWith.fieldName(...)`
class _$SettingsCWProxyImpl implements _$SettingsCWProxy {
  const _$SettingsCWProxyImpl(this._value);

  final Settings _value;

  @override
  Settings themeMode(ThemeMode themeMode) => this(themeMode: themeMode);

  @override
  Settings materialColor(MaterialColor materialColor) =>
      this(materialColor: materialColor);

  @override
  Settings padding(double padding) => this(padding: padding);

  @override
  Settings elevation(double elevation) => this(elevation: elevation);

  @override
  Settings height(double height) => this(height: height);

  @override
  Settings areMoreColors(bool areMoreColors) =>
      this(areMoreColors: areMoreColors);

  @override
  Settings isFirstStart(bool isFirstStart) => this(isFirstStart: isFirstStart);

  @override
  Settings borderRadius(double borderRadius) =>
      this(borderRadius: borderRadius);

  @override
  Settings textScaleFactor(double textScaleFactor) =>
      this(textScaleFactor: textScaleFactor);

  @override
  Settings headlineTextSize(double headlineTextSize) =>
      this(headlineTextSize: headlineTextSize);

  @override
  Settings pageIndex(int pageIndex) => this(pageIndex: pageIndex);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    Object? themeMode = const $CopyWithPlaceholder(),
    Object? materialColor = const $CopyWithPlaceholder(),
    Object? padding = const $CopyWithPlaceholder(),
    Object? elevation = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? areMoreColors = const $CopyWithPlaceholder(),
    Object? isFirstStart = const $CopyWithPlaceholder(),
    Object? borderRadius = const $CopyWithPlaceholder(),
    Object? textScaleFactor = const $CopyWithPlaceholder(),
    Object? headlineTextSize = const $CopyWithPlaceholder(),
    Object? pageIndex = const $CopyWithPlaceholder(),
  }) {
    return Settings(
      themeMode: themeMode == const $CopyWithPlaceholder() || themeMode == null
          ? _value.themeMode
          // ignore: cast_nullable_to_non_nullable
          : themeMode as ThemeMode,
      materialColor:
          materialColor == const $CopyWithPlaceholder() || materialColor == null
              ? _value.materialColor
              // ignore: cast_nullable_to_non_nullable
              : materialColor as MaterialColor,
      padding: padding == const $CopyWithPlaceholder() || padding == null
          ? _value.padding
          // ignore: cast_nullable_to_non_nullable
          : padding as double,
      elevation: elevation == const $CopyWithPlaceholder() || elevation == null
          ? _value.elevation
          // ignore: cast_nullable_to_non_nullable
          : elevation as double,
      height: height == const $CopyWithPlaceholder() || height == null
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as double,
      areMoreColors:
          areMoreColors == const $CopyWithPlaceholder() || areMoreColors == null
              ? _value.areMoreColors
              // ignore: cast_nullable_to_non_nullable
              : areMoreColors as bool,
      isFirstStart:
          isFirstStart == const $CopyWithPlaceholder() || isFirstStart == null
              ? _value.isFirstStart
              // ignore: cast_nullable_to_non_nullable
              : isFirstStart as bool,
      borderRadius:
          borderRadius == const $CopyWithPlaceholder() || borderRadius == null
              ? _value.borderRadius
              // ignore: cast_nullable_to_non_nullable
              : borderRadius as double,
      textScaleFactor: textScaleFactor == const $CopyWithPlaceholder() ||
              textScaleFactor == null
          ? _value.textScaleFactor
          // ignore: cast_nullable_to_non_nullable
          : textScaleFactor as double,
      headlineTextSize: headlineTextSize == const $CopyWithPlaceholder() ||
              headlineTextSize == null
          ? _value.headlineTextSize
          // ignore: cast_nullable_to_non_nullable
          : headlineTextSize as double,
      pageIndex: pageIndex == const $CopyWithPlaceholder() || pageIndex == null
          ? _value.pageIndex
          // ignore: cast_nullable_to_non_nullable
          : pageIndex as int,
    );
  }
}

extension $SettingsCopyWith on Settings {
  /// Returns a callable class that can be used as follows: `instanceOfSettings.copyWith(...)` or like so:`instanceOfSettings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SettingsCWProxy get copyWith => _$SettingsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.amber
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      padding: (json['padding'] as num?)?.toDouble() ?? 8,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 8,
      height: (json['height'] as num?)?.toDouble() ?? 80,
      areMoreColors: json['areMoreColors'] as bool? ?? false,
      isFirstStart: json['isFirstStart'] as bool? ?? false,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble() ?? 1,
      headlineTextSize: (json['headlineTextSize'] as num?)?.toDouble() ?? 1.2,
      pageIndex: json['pageIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'padding': instance.padding,
      'elevation': instance.elevation,
      'height': instance.height,
      'areMoreColors': instance.areMoreColors,
      'isFirstStart': instance.isFirstStart,
      'borderRadius': instance.borderRadius,
      'textScaleFactor': instance.textScaleFactor,
      'headlineTextSize': instance.headlineTextSize,
      'pageIndex': instance.pageIndex,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
