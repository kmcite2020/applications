// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as String,
      investigations: (json['investigations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String,
      outComeStatus: $enumDecode(_$OutComeStatusEnumMap, json['outComeStatus']),
      diagnosis: json['diagnosis'] as String,
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
  OutComeStatus.death: 'death',
};
