// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayersImpl _$$PrayersImplFromJson(Map<String, dynamic> json) =>
    _$PrayersImpl(
      fajr: json['fajr'] as int,
      zuhr: json['zuhr'] as int,
      asar: json['asar'] as int,
      maghrib: json['maghrib'] as int,
      isha: json['isha'] as int,
      prayers: (json['prayers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Prayer.fromJson(e)),
          ) ??
          const <String, Prayer>{},
    );

Map<String, dynamic> _$$PrayersImplToJson(_$PrayersImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'zuhr': instance.zuhr,
      'asar': instance.asar,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'prayers': instance.prayers,
    };

_$PrayerImpl _$$PrayerImplFromJson(Map<String, dynamic> json) => _$PrayerImpl(
      name: json['name'] as String? ?? '',
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$PrayerImplToJson(_$PrayerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
    };
