// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      materialColor: json['materialColor'] == null
          ? Colors.amber
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      trueThemeMode: json['trueThemeMode'] as bool? ?? true,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isColorsVisible: json['isColorsVisible'] as bool? ?? false,
      isSearching: json['isSearching'] as bool? ?? false,
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
      height: (json['height'] as num?)?.toDouble() ?? 80.0,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble() ?? 1.0,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 8.0,
      font: json['font'] as String?,
      isAdvancedThemingMode: json['isAdvancedThemingMode'] as bool? ?? false,
      picturesViewMode: $enumDecodeNullable(
              _$PicturesViewModeEnumMap, json['picturesViewMode']) ??
          PicturesViewMode.listviewWithDate,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'trueThemeMode': instance.trueThemeMode,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isColorsVisible': instance.isColorsVisible,
      'isSearching': instance.isSearching,
      'padding': instance.padding,
      'height': instance.height,
      'borderRadius': instance.borderRadius,
      'textScaleFactor': instance.textScaleFactor,
      'elevation': instance.elevation,
      'font': instance.font,
      'isAdvancedThemingMode': instance.isAdvancedThemingMode,
      'picturesViewMode': _$PicturesViewModeEnumMap[instance.picturesViewMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$PicturesViewModeEnumMap = {
  PicturesViewMode.fullscreen: 'fullscreen',
  PicturesViewMode.gridview: 'gridview',
  PicturesViewMode.listviewWithDate: 'listviewWithDate',
};
