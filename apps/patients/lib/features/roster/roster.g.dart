// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RosterEntryImpl _$$RosterEntryImplFromJson(Map<String, dynamic> json) =>
    _$RosterEntryImpl(
      shiftType: $enumDecode(_$ShiftTypeEnumMap, json['shiftType']),
      dayType: $enumDecode(_$DayTypeEnumMap, json['dayType']),
    );

Map<String, dynamic> _$$RosterEntryImplToJson(_$RosterEntryImpl instance) =>
    <String, dynamic>{
      'shiftType': _$ShiftTypeEnumMap[instance.shiftType]!,
      'dayType': _$DayTypeEnumMap[instance.dayType]!,
    };

const _$ShiftTypeEnumMap = {
  ShiftType.morning: 'morning',
  ShiftType.evening: 'evening',
  ShiftType.night: 'night',
};

const _$DayTypeEnumMap = {
  DayType.mon: 'mon',
  DayType.tue: 'tue',
  DayType.wed: 'wed',
  DayType.thu: 'thu',
  DayType.fri: 'fri',
  DayType.sat: 'sat',
  DayType.sun: 'sun',
};
