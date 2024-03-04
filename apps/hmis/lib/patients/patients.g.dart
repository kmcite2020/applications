// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientsImpl _$$PatientsImplFromJson(Map<String, dynamic> json) =>
    _$PatientsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Patient.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Patient>{},
    );

Map<String, dynamic> _$$PatientsImplToJson(_$PatientsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: json['age'] as String? ?? '',
      investigations: (json['investigations'] as List<dynamic>?)
              ?.map((e) => Investigation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Investigation>[],
      createdAt: json['createdAt'] as String? ?? '',
      outComeStatus:
          $enumDecodeNullable(_$OutComeStatusEnumMap, json['outComeStatus']) ??
              OutComeStatus.emergency,
      diagnosis: json['diagnosis'] as String? ?? '',
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'investigations': instance.investigations,
      'createdAt': instance.createdAt,
      'outComeStatus': _$OutComeStatusEnumMap[instance.outComeStatus]!,
      'diagnosis': instance.diagnosis,
    };

const _$OutComeStatusEnumMap = {
  OutComeStatus.emergency: 'emergency',
  OutComeStatus.discharged: 'discharged',
  OutComeStatus.admitted: 'admitted',
  OutComeStatus.referred: 'referred',
  OutComeStatus.expired: 'expired',
};
