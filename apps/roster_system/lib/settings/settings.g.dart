// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      materialColor: json['materialColor'] == null
          ? Colors.blueGrey
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      pageIndex: json['pageIndex'] as int? ?? 0,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble() ?? 1.0,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'pageIndex': instance.pageIndex,
      'textScaleFactor': instance.textScaleFactor,
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
