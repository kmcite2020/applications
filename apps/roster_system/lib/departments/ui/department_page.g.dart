// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayShiftImpl _$$DayShiftImplFromJson(Map<String, dynamic> json) =>
    _$DayShiftImpl(
      $enumDecode(_$DayEnumMap, json['day']),
      $enumDecode(_$ShiftEnumMap, json['shift']),
    );

Map<String, dynamic> _$$DayShiftImplToJson(_$DayShiftImpl instance) =>
    <String, dynamic>{
      'day': _$DayEnumMap[instance.day]!,
      'shift': _$ShiftEnumMap[instance.shift]!,
    };

const _$DayEnumMap = {
  Day.mon: 'mon',
  Day.tue: 'tue',
  Day.wed: 'wed',
  Day.thu: 'thu',
  Day.fri: 'fri',
  Day.sat: 'sat',
  Day.sun: 'sun',
};

const _$ShiftEnumMap = {
  Shift.M: 'M',
  Shift.E: 'E',
  Shift.N: 'N',
};
