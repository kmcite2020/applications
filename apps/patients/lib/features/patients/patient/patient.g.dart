// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientsImpl _$$PatientsImplFromJson(Map<String, dynamic> json) =>
    _$PatientsImpl(
      patientsCache: (json['patientsCache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Patient.fromJson(e)),
          ) ??
          const <String, Patient>{},
    );

Map<String, dynamic> _$$PatientsImplToJson(_$PatientsImpl instance) =>
    <String, dynamic>{
      'patientsCache': instance.patientsCache,
    };

_$AgeImpl _$$AgeImplFromJson(Map<String, dynamic> json) => _$AgeImpl(
      value: json['value'] as int? ?? 0,
      ageUnit: $enumDecodeNullable(_$AgeUnitEnumMap, json['ageUnit']) ??
          AgeUnit.years,
    );

Map<String, dynamic> _$$AgeImplToJson(_$AgeImpl instance) => <String, dynamic>{
      'value': instance.value,
      'ageUnit': _$AgeUnitEnumMap[instance.ageUnit]!,
    };

const _$AgeUnitEnumMap = {
  AgeUnit.days: 'days',
  AgeUnit.months: 'months',
  AgeUnit.years: 'years',
};

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: json['age'] == null ? const Age() : Age.fromJson(json['age']),
      timeOfPresentation: json['timeOfPresentation'] == null
          ? null
          : DateTime.parse(json['timeOfPresentation'] as String),
      patientType:
          $enumDecodeNullable(_$PatientTypeEnumMap, json['patientType']) ??
              PatientType.medical,
      complaintNotes: (json['complaintNotes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      firstAidNotes: (json['firstAidNotes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      diagnositicNotes: (json['diagnositicNotes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      furtherPlans: (json['furtherPlans'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      pictures: json['pictures'] == null
          ? const Pictures()
          : Pictures.fromJson(json['pictures']),
      attended: json['attended'] as bool? ?? false,
      editing: json['editing'] as bool? ?? false,
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'timeOfPresentation': instance.timeOfPresentation?.toIso8601String(),
      'patientType': _$PatientTypeEnumMap[instance.patientType]!,
      'complaintNotes': instance.complaintNotes,
      'firstAidNotes': instance.firstAidNotes,
      'diagnositicNotes': instance.diagnositicNotes,
      'furtherPlans': instance.furtherPlans,
      'pictures': instance.pictures,
      'attended': instance.attended,
      'editing': instance.editing,
    };

const _$PatientTypeEnumMap = {
  PatientType.medical: 'medical',
  PatientType.surgical: 'surgical',
  PatientType.peds: 'peds',
  PatientType.obs: 'obs',
  PatientType.mixed: 'mixed',
};

_$PicturesImpl _$$PicturesImplFromJson(Map<String, dynamic> json) =>
    _$PicturesImpl(
      details: json['details'] as String? ?? '',
    );

Map<String, dynamic> _$$PicturesImplToJson(_$PicturesImpl instance) =>
    <String, dynamic>{
      'details': instance.details,
    };
