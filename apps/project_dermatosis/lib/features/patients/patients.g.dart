// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientsImpl _$$PatientsImplFromJson(Map<String, dynamic> json) =>
    _$PatientsImpl(
      patients: (json['patients'] as List<dynamic>?)
              ?.map((e) => Patient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Patient>[],
    );

Map<String, dynamic> _$$PatientsImplToJson(_$PatientsImpl instance) =>
    <String, dynamic>{
      'patients': instance.patients,
    };
