// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteriesImpl _$$BatteriesImplFromJson(Map<String, dynamic> json) =>
    _$BatteriesImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Battery.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Battery>{},
      removedBattery: json['removedBattery'] == null
          ? null
          : Battery.fromJson(json['removedBattery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BatteriesImplToJson(_$BatteriesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
      'removedBattery': instance.removedBattery,
    };

_$BatteryImpl _$$BatteryImplFromJson(Map<String, dynamic> json) =>
    _$BatteryImpl(
      id: json['id'] as String,
      brandName: json['brandName'] as String,
      capacity: json['capacity'] as String,
      voltage: json['voltage'] as String,
      technologyType: json['technologyType'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$BatteryImplToJson(_$BatteryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandName': instance.brandName,
      'capacity': instance.capacity,
      'voltage': instance.voltage,
      'technologyType': instance.technologyType,
      'price': instance.price,
    };

_$AddBatteryEventImpl _$$AddBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBatteryEventImpl(
      batteryToAdd:
          Battery.fromJson(json['batteryToAdd'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddBatteryEventImplToJson(
        _$AddBatteryEventImpl instance) =>
    <String, dynamic>{
      'batteryToAdd': instance.batteryToAdd,
      'runtimeType': instance.$type,
    };

_$RemoveBatteryEventImpl _$$RemoveBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveBatteryEventImpl(
      batteryToRemove:
          Battery.fromJson(json['batteryToRemove'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RemoveBatteryEventImplToJson(
        _$RemoveBatteryEventImpl instance) =>
    <String, dynamic>{
      'batteryToRemove': instance.batteryToRemove,
      'runtimeType': instance.$type,
    };

_$RestoreBatteryEventImpl _$$RestoreBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$RestoreBatteryEventImpl(
      batteryToRestore:
          Battery.fromJson(json['batteryToRestore'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RestoreBatteryEventImplToJson(
        _$RestoreBatteryEventImpl instance) =>
    <String, dynamic>{
      'batteryToRestore': instance.batteryToRestore,
      'runtimeType': instance.$type,
    };

_$AddToCartBatteryEventImpl _$$AddToCartBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToCartBatteryEventImpl(
      battery: Battery.fromJson(json['battery'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddToCartBatteryEventImplToJson(
        _$AddToCartBatteryEventImpl instance) =>
    <String, dynamic>{
      'battery': instance.battery,
      'runtimeType': instance.$type,
    };

_$RemoveFromCartBatteryEventImpl _$$RemoveFromCartBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveFromCartBatteryEventImpl(
      battery: Battery.fromJson(json['battery'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RemoveFromCartBatteryEventImplToJson(
        _$RemoveFromCartBatteryEventImpl instance) =>
    <String, dynamic>{
      'battery': instance.battery,
      'runtimeType': instance.$type,
    };

_$UpdateBatteryEventImpl _$$UpdateBatteryEventImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBatteryEventImpl(
      oldBattery: Battery.fromJson(json['oldBattery'] as Map<String, dynamic>),
      newBattery: Battery.fromJson(json['newBattery'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateBatteryEventImplToJson(
        _$UpdateBatteryEventImpl instance) =>
    <String, dynamic>{
      'oldBattery': instance.oldBattery,
      'newBattery': instance.newBattery,
      'runtimeType': instance.$type,
    };
