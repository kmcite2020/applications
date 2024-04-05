// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteryImpl _$$BatteryImplFromJson(Map<String, dynamic> json) =>
    _$BatteryImpl(
      id: json['id'] as String? ?? '',
      brandName: json['brandName'] as String? ?? '',
      capacity: json['capacity'] as String? ?? '',
      voltage: json['voltage'] as String? ?? '',
      technologyType: json['technologyType'] as String? ?? '',
      price: json['price'] as String? ?? '',
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
