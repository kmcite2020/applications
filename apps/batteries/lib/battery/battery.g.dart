// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteryImpl _$$BatteryImplFromJson(Map<String, dynamic> json) =>
    _$BatteryImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$BatteryImplToJson(_$BatteryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$AddBatteryEventImpl _$$AddBatteryEventImplFromJson(
        Map<String, dynamic> json,) =>
    _$AddBatteryEventImpl(
      batteryToAdd:
          Battery.fromJson(json['batteryToAdd'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddBatteryEventImplToJson(
        _$AddBatteryEventImpl instance,) =>
    <String, dynamic>{
      'batteryToAdd': instance.batteryToAdd,
      'runtimeType': instance.$type,
    };

_$RemoveBatteryEventImpl _$$RemoveBatteryEventImplFromJson(
        Map<String, dynamic> json,) =>
    _$RemoveBatteryEventImpl(
      batteryToRemove:
          Battery.fromJson(json['batteryToRemove'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RemoveBatteryEventImplToJson(
        _$RemoveBatteryEventImpl instance,) =>
    <String, dynamic>{
      'batteryToRemove': instance.batteryToRemove,
      'runtimeType': instance.$type,
    };

_$UpdateBatteryEventImpl _$$UpdateBatteryEventImplFromJson(
        Map<String, dynamic> json,) =>
    _$UpdateBatteryEventImpl(
      oldBattery: Battery.fromJson(json['oldBattery'] as Map<String, dynamic>),
      newBattery: Battery.fromJson(json['newBattery'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateBatteryEventImplToJson(
        _$UpdateBatteryEventImpl instance,) =>
    <String, dynamic>{
      'oldBattery': instance.oldBattery,
      'newBattery': instance.newBattery,
      'runtimeType': instance.$type,
    };
