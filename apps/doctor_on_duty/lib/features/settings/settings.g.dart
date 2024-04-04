// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      materialColor:
          const MaterialColorConverter().fromJson(json['materialColor'] as int),
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      font: $enumDecode(_$FontEnumMap, json['font']),
      padding: (json['padding'] as num).toDouble(),
      borderRadius: (json['borderRadius'] as num).toDouble(),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'font': _$FontEnumMap[instance.font]!,
      'padding': instance.padding,
      'borderRadius': instance.borderRadius,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$FontEnumMap = {
  Font.azeretMono: 'azeretMono',
  Font.comfortaa: 'comfortaa',
  Font.operatorMono: 'operatorMono',
  Font.lotion: 'lotion',
  Font.dMMono: 'dMMono',
  Font.dosis: 'dosis',
  Font.firaSans: 'firaSans',
  Font.iBMPlexMono: 'iBMPlexMono',
  Font.josefinSans: 'josefinSans',
  Font.montserrat: 'montserrat',
  Font.spaceMono: 'spaceMono',
  Font.ubuntu: 'ubuntu',
  Font.defaultFont: 'defaultFont',
};
