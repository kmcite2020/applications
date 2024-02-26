// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      viewMode: $enumDecodeNullable(_$ViewModeEnumMap, json['viewMode']) ??
          ViewMode.list,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'viewMode': _$ViewModeEnumMap[instance.viewMode]!,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
    };

const _$ViewModeEnumMap = {
  ViewMode.list: 'list',
  ViewMode.grid: 'grid',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
