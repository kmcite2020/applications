// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      userName: json['userName'] as String,
      editing: json['editing'] as bool,
      ageBasedOrExplicit: json['ageBasedOrExplicit'] as bool,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      dateOfPubertyExplicit:
          DateTime.parse(json['dateOfPubertyExplicit'] as String),
      ageVysor: $enumDecode(_$AgeVysorEnumMap, json['ageVysor']),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'editing': instance.editing,
      'ageBasedOrExplicit': instance.ageBasedOrExplicit,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'dateOfPubertyExplicit': instance.dateOfPubertyExplicit.toIso8601String(),
      'ageVysor': _$AgeVysorEnumMap[instance.ageVysor]!,
    };

const _$AgeVysorEnumMap = {
  AgeVysor.years: 'years',
  AgeVysor.months: 'months',
  AgeVysor.days: 'days',
  AgeVysor.hours: 'hours',
  AgeVysor.minutes: 'minutes',
  AgeVysor.seconds: 'seconds',
};
