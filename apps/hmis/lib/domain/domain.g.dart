// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      padding: (json['padding'] as num).toDouble(),
      borderRadius: (json['borderRadius'] as num).toDouble(),
      elevation: (json['elevation'] as num).toDouble(),
      buttonHeight: (json['buttonHeight'] as num).toDouble(),
      displacementOfAppBarFromTopEdgeOfTheScreen:
          (json['displacementOfAppBarFromTopEdgeOfTheScreen'] as num)
              .toDouble(),
      font: json['font'] as String?,
      hospitalName: json['hospitalName'] as String,
      userName: json['userName'] as String,
      editingHospitalName: json['editingHospitalName'] as bool,
      colorVisibility: json['colorVisibility'] as bool,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'padding': instance.padding,
      'borderRadius': instance.borderRadius,
      'elevation': instance.elevation,
      'buttonHeight': instance.buttonHeight,
      'displacementOfAppBarFromTopEdgeOfTheScreen':
          instance.displacementOfAppBarFromTopEdgeOfTheScreen,
      'font': instance.font,
      'hospitalName': instance.hospitalName,
      'userName': instance.userName,
      'editingHospitalName': instance.editingHospitalName,
      'colorVisibility': instance.colorVisibility,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
