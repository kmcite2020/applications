// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      userName: json['userName'] as String? ?? '',
      editing: json['editing'] as bool? ?? false,
      ageBasedOrExplicit: json['ageBasedOrExplicit'] as bool? ?? false,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      dateOfPubertyExplicit:
          DateTime.parse(json['dateOfPubertyExplicit'] as String),
      ageVysor: $enumDecodeNullable(_$AgeVysorEnumMap, json['ageVysor']) ??
          AgeVysor.seconds,
      age: json['age'] == null
          ? Duration.zero
          : Duration(microseconds: json['age'] as int),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'editing': instance.editing,
      'ageBasedOrExplicit': instance.ageBasedOrExplicit,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'dateOfPubertyExplicit': instance.dateOfPubertyExplicit.toIso8601String(),
      'ageVysor': _$AgeVysorEnumMap[instance.ageVysor]!,
      'age': instance.age.inMicroseconds,
    };

const _$AgeVysorEnumMap = {
  AgeVysor.years: 'years',
  AgeVysor.months: 'months',
  AgeVysor.days: 'days',
  AgeVysor.hours: 'hours',
  AgeVysor.minutes: 'minutes',
  AgeVysor.seconds: 'seconds',
};
