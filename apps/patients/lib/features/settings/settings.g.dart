// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      borderRadius: (json['borderRadius'] as num).toDouble(),
      padding: (json['padding'] as num).toDouble(),
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      materialColor:
          const MaterialColorConverter().fromJson(json['materialColor'] as int),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
