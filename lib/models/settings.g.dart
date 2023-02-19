// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingModel _$$_SettingModelFromJson(Map<String, dynamic> json) =>
    _$_SettingModel(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      font: json['font'] as String,
      materialColor: const MaterialColorSerializer()
          .fromJson(json['materialColor'] as int),
      padding: (json['padding'] as num).toDouble(),
      borderRadius: (json['borderRadius'] as num).toDouble(),
      currentApp:
          $enumDecodeNullable(_$AvailableAppsEnumMap, json['currentApp']),
    );

Map<String, dynamic> _$$_SettingModelToJson(_$_SettingModel instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'font': instance.font,
      'materialColor':
          const MaterialColorSerializer().toJson(instance.materialColor),
      'padding': instance.padding,
      'borderRadius': instance.borderRadius,
      'currentApp': _$AvailableAppsEnumMap[instance.currentApp],
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$AvailableAppsEnumMap = {
  AvailableApps.beseechApp: 'beseechApp',
  AvailableApps.bloodPressureManagerApp: 'bloodPressureManagerApp',
  AvailableApps.commonSymptomsApp: 'commonSymptomsApp',
  AvailableApps.userManagerApp: 'userManagerApp',
  AvailableApps.fcpsApp: 'fcpsApp',
  AvailableApps.hiveDB: 'hiveDB',
  AvailableApps.googleFontsViewerApp: 'googleFontsViewerApp',
  AvailableApps.hmisApp: 'hmisApp',
  AvailableApps.hospitalApp: 'hospitalApp',
  AvailableApps.idealApp: 'idealApp',
  AvailableApps.prayersApp: 'prayersApp',
  AvailableApps.prescriptionsApp: 'prescriptionsApp',
  AvailableApps.opthalmologyApp: 'opthalmologyApp',
  AvailableApps.mcqsManagerApp: 'mcqsManagerApp',
  AvailableApps.settingsApp: 'settingsApp',
  AvailableApps.taskManagerApp: 'taskManagerApp',
  AvailableApps.timerApp: 'timerApp',
  AvailableApps.dashboard: 'dashboard',
};
