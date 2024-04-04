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
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isAddCustomerVisible: json['isAddCustomerVisible'] as bool? ?? false,
      isThemeModesExtended: json['isThemeModesExtended'] as bool? ?? false,
      isColorsExtended: json['isColorsExtended'] as bool? ?? false,
      isFontsExtended: json['isFontsExtended'] as bool? ?? false,
      font: json['font'] as String? ?? '',
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isAddCustomerVisible': instance.isAddCustomerVisible,
      'isThemeModesExtended': instance.isThemeModesExtended,
      'isColorsExtended': instance.isColorsExtended,
      'isFontsExtended': instance.isFontsExtended,
      'font': instance.font,
      'padding': instance.padding,
      'borderRadius': instance.borderRadius,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
