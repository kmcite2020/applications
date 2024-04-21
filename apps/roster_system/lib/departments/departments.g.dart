// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      duties: (json['duties'] as List<dynamic>?)
              ?.map((e) => Duty.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Duty>[],
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duties': instance.duties,
    };

_$DutyImpl _$$DutyImplFromJson(Map<String, dynamic> json) => _$DutyImpl(
      dayShift: DayShift.fromJson(json['dayShift'] as Map<String, dynamic>),
      doctor: Doctor.fromJson(json['doctor']),
    );

Map<String, dynamic> _$$DutyImplToJson(_$DutyImpl instance) =>
    <String, dynamic>{
      'dayShift': instance.dayShift,
      'doctor': instance.doctor,
    };
