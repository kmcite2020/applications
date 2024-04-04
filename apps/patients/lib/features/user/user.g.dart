// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      showDurationIn:
          $enumDecode(_$ShowDurationInEnumMap, json['showDurationIn']),
      jobStartedOn: DateTime.parse(json['jobStartedOn'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'showDurationIn': _$ShowDurationInEnumMap[instance.showDurationIn]!,
      'jobStartedOn': instance.jobStartedOn.toIso8601String(),
      'name': instance.name,
    };

const _$ShowDurationInEnumMap = {
  ShowDurationIn.seconds: 'seconds',
  ShowDurationIn.minutes: 'minutes',
  ShowDurationIn.hours: 'hours',
  ShowDurationIn.days: 'days',
  ShowDurationIn.months: 'months',
  ShowDurationIn.years: 'years',
};
