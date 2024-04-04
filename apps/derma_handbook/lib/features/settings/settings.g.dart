// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.blue
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 8.0,
      height: (json['height'] as num?)?.toDouble() ?? 8.0,
      areMoreColors: json['areMoreColors'] as bool? ?? false,
      isFirstStart: json['isFirstStart'] as bool? ?? false,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble() ?? 1.0,
      headlineTextSize: (json['headlineTextSize'] as num?)?.toDouble() ?? 1.0,
      pageIndex: json['pageIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
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
