// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_themes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvancedThemeModelImpl _$$AdvancedThemeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvancedThemeModelImpl(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      light: json['light'] == null
          ? const AdvancedColors.light()
          : AdvancedColors.fromJson(json['light']),
      dark: json['dark'] == null
          ? const AdvancedColors.dark()
          : AdvancedColors.fromJson(json['dark']),
    );

Map<String, dynamic> _$$AdvancedThemeModelImplToJson(
        _$AdvancedThemeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'light': instance.light,
      'dark': instance.dark,
    };

_$AdvancedColorsLightImpl _$$AdvancedColorsLightImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvancedColorsLightImpl(
      primary: json['primary'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['primary'] as int),
      secondary: json['secondary'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['secondary'] as int),
      background: json['background'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['background'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AdvancedColorsLightImplToJson(
        _$AdvancedColorsLightImpl instance) =>
    <String, dynamic>{
      'primary': const MaterialColorConverter().toJson(instance.primary),
      'secondary': const MaterialColorConverter().toJson(instance.secondary),
      'background': const MaterialColorConverter().toJson(instance.background),
      'runtimeType': instance.$type,
    };

_$AdvancedColorsDarkImpl _$$AdvancedColorsDarkImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvancedColorsDarkImpl(
      primary: json['primary'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['primary'] as int),
      secondary: json['secondary'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['secondary'] as int),
      background: json['background'] == null
          ? Colors.blue
          : const MaterialColorConverter().fromJson(json['background'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AdvancedColorsDarkImplToJson(
        _$AdvancedColorsDarkImpl instance) =>
    <String, dynamic>{
      'primary': const MaterialColorConverter().toJson(instance.primary),
      'secondary': const MaterialColorConverter().toJson(instance.secondary),
      'background': const MaterialColorConverter().toJson(instance.background),
      'runtimeType': instance.$type,
    };
