// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8,
      padding: (json['padding'] as num?)?.toDouble() ?? 8,
      studioMode: json['studioMode'] as bool? ?? false,
      materialColor: json['materialColor'] == null
          ? Colors.red
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
      'studioMode': instance.studioMode,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
