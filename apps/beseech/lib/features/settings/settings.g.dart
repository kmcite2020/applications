// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsEventImpl _$$SettingsEventImplFromJson(Map<String, dynamic> json) =>
    _$SettingsEventImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingsEventImplToJson(_$SettingsEventImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SettingsEventThemeModeImpl _$$SettingsEventThemeModeImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsEventThemeModeImpl(
      $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingsEventThemeModeImplToJson(
        _$SettingsEventThemeModeImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'runtimeType': instance.$type,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_$SettingsEventMaterialColorImpl _$$SettingsEventMaterialColorImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsEventMaterialColorImpl(
      const MaterialColorConverter().fromJson(json['materialColor'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingsEventMaterialColorImplToJson(
        _$SettingsEventMaterialColorImpl instance) =>
    <String, dynamic>{
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'runtimeType': instance.$type,
    };

_$SettingsEventBorderRadiusImpl _$$SettingsEventBorderRadiusImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsEventBorderRadiusImpl(
      (json['borderRadius'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingsEventBorderRadiusImplToJson(
        _$SettingsEventBorderRadiusImpl instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius,
      'runtimeType': instance.$type,
    };

_$SettingsEventPaddingImpl _$$SettingsEventPaddingImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsEventPaddingImpl(
      (json['padding'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingsEventPaddingImplToJson(
        _$SettingsEventPaddingImpl instance) =>
    <String, dynamic>{
      'padding': instance.padding,
      'runtimeType': instance.$type,
    };

_$SettingsStateImpl _$$SettingsStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingsStateImpl(
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8,
      padding: (json['padding'] as num?)?.toDouble() ?? 8,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.amber
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
    );

Map<String, dynamic> _$$SettingsStateImplToJson(_$SettingsStateImpl instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
    };
