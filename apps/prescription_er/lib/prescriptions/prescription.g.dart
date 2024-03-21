// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientsImpl _$$PatientsImplFromJson(Map<String, dynamic> json) =>
    _$PatientsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Patient.fromJson(e)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$PatientsImplToJson(_$PatientsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      arrivalAt: DateTime.parse(json['arrivalAt'] as String),
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      fatherName: json['fatherName'] as String? ?? "",
      cnic: json['cnic'] == null ? const CNIC() : CNIC.fromJson(json['cnic']),
      age: json['age'] == null
          ? Duration.zero
          : Duration(microseconds: json['age'] as int),
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address']),
      gender:
          $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
      patientStatus:
          $enumDecodeNullable(_$PatientStatusEnumMap, json['patientStatus']) ??
              PatientStatus.emergency,
      classification: $enumDecodeNullable(
              _$ClassificationEnumMap, json['classification']) ??
          Classification.medical,
      triage:
          $enumDecodeNullable(_$TriageEnumMap, json['triage']) ?? Triage.green,
      isAttended: json['isAttended'] as bool? ?? false,
      presentingComplaints: json['presentingComplaints'] == null
          ? const PresentingComplaints()
          : PresentingComplaints.fromJson(
              json['presentingComplaints'] as Map<String, dynamic>),
      vitals: json['vitals'] == null
          ? const Vitals()
          : Vitals.fromJson(json['vitals']),
      examinations: json['examinations'] == null
          ? const Examinations()
          : Examinations.fromJson(json['examinations']),
      investigations: (json['investigations'] as List<dynamic>?)
              ?.map(Investigation.fromJson)
              .toList() ??
          const [],
      managements: (json['managements'] as List<dynamic>?)
              ?.map(Management.fromJson)
              .toList() ??
          const [],
      provisionalDiagnosis: json['provisionalDiagnosis'] as String? ?? "",
      diagnosis: json['diagnosis'] as String? ?? "",
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'arrivalAt': instance.arrivalAt.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'fatherName': instance.fatherName,
      'cnic': instance.cnic,
      'age': instance.age.inMicroseconds,
      'address': instance.address,
      'gender': _$GenderEnumMap[instance.gender]!,
      'patientStatus': _$PatientStatusEnumMap[instance.patientStatus]!,
      'classification': _$ClassificationEnumMap[instance.classification]!,
      'triage': _$TriageEnumMap[instance.triage]!,
      'isAttended': instance.isAttended,
      'presentingComplaints': instance.presentingComplaints,
      'vitals': instance.vitals,
      'examinations': instance.examinations,
      'investigations': instance.investigations,
      'managements': instance.managements,
      'provisionalDiagnosis': instance.provisionalDiagnosis,
      'diagnosis': instance.diagnosis,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$PatientStatusEnumMap = {
  PatientStatus.emergency: 'emergency',
  PatientStatus.opd: 'opd',
  PatientStatus.discharged: 'discharged',
  PatientStatus.admitted: 'admitted',
};

const _$ClassificationEnumMap = {
  Classification.rta: 'rta',
  Classification.medical: 'medical',
  Classification.surgical: 'surgical',
  Classification.other: 'other',
  Classification.mlc: 'mlc',
};

const _$TriageEnumMap = {
  Triage.green: 'green',
  Triage.yellow: 'yellow',
  Triage.red: 'red',
  Triage.white: 'white',
};

_$PresentingComplaintsImpl _$$PresentingComplaintsImplFromJson(
        Map<String, dynamic> json) =>
    _$PresentingComplaintsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Complaint.fromJson(e)),
          ) ??
          const <String, Complaint>{},
    );

Map<String, dynamic> _$$PresentingComplaintsImplToJson(
        _$PresentingComplaintsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };

_$ExaminationsImpl _$$ExaminationsImplFromJson(Map<String, dynamic> json) =>
    _$ExaminationsImpl(
      eye: json['eye'] as String? ?? "",
      ent: json['ent'] as String? ?? "",
      cvs: json['cvs'] as String? ?? "",
      cns: json['cns'] as String? ?? "",
      pulmo: json['pulmo'] as String? ?? "",
      skin: json['skin'] as String? ?? "",
      gi: json['gi'] as String? ?? "",
      gu: json['gu'] as String? ?? "",
    );

Map<String, dynamic> _$$ExaminationsImplToJson(_$ExaminationsImpl instance) =>
    <String, dynamic>{
      'eye': instance.eye,
      'ent': instance.ent,
      'cvs': instance.cvs,
      'cns': instance.cns,
      'pulmo': instance.pulmo,
      'skin': instance.skin,
      'gi': instance.gi,
      'gu': instance.gu,
    };

_$ComplaintImpl _$$ComplaintImplFromJson(Map<String, dynamic> json) =>
    _$ComplaintImpl(
      id: json['id'] as String? ?? '',
      complaint: json['complaint'] as String? ?? '',
      history: json['history'] as String? ?? '',
      duration: json['duration'] == null
          ? Duration.zero
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$ComplaintImplToJson(_$ComplaintImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'complaint': instance.complaint,
      'history': instance.history,
      'duration': instance.duration.inMicroseconds,
    };

_$CNICImpl _$$CNICImplFromJson(Map<String, dynamic> json) => _$CNICImpl(
      a: json['a'] as String? ?? '00000',
      b: json['b'] as String? ?? '0000002',
      c: json['c'] as String? ?? '1',
    );

Map<String, dynamic> _$$CNICImplToJson(_$CNICImpl instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      country: json['country'] as String? ?? 'PK',
      province: json['province'] as String? ?? 'KPK',
      city: json['city'] as String? ?? 'SWABI',
      area: json['area'] as String? ?? 'SHAH MANSOOR',
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'province': instance.province,
      'city': instance.city,
      'area': instance.area,
    };

_$InvestigationImpl _$$InvestigationImplFromJson(Map<String, dynamic> json) =>
    _$InvestigationImpl(
      name: json['name'] as String? ?? '',
      value: json['value'] as String? ?? '',
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$InvestigationImplToJson(_$InvestigationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
    };

_$ManagementImpl _$$ManagementImplFromJson(Map<String, dynamic> json) =>
    _$ManagementImpl(
      description: json['description'] as String? ?? '',
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$ManagementImplToJson(_$ManagementImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'time': instance.time.toIso8601String(),
    };

_$OutcomeImpl _$$OutcomeImplFromJson(Map<String, dynamic> json) =>
    _$OutcomeImpl(
      outcomeStatus: $enumDecode(_$OutcomeStatusEnumMap, json['outcomeStatus']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OutcomeImplToJson(_$OutcomeImpl instance) =>
    <String, dynamic>{
      'outcomeStatus': _$OutcomeStatusEnumMap[instance.outcomeStatus]!,
      'description': instance.description,
    };

const _$OutcomeStatusEnumMap = {
  OutcomeStatus.death: 'death',
  OutcomeStatus.referal: 'referal',
  OutcomeStatus.admission: 'admission',
  OutcomeStatus.discharged: 'discharged',
  OutcomeStatus.pending: 'pending',
};

_$VitalsImpl _$$VitalsImplFromJson(Map<String, dynamic> json) => _$VitalsImpl(
      systolic: json['systolic'] as int? ?? 120,
      diastolic: json['diastolic'] as int? ?? 80,
      pulse: json['pulse'] as int? ?? 72,
      oxygen: json['oxygen'] as int? ?? 98,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 98.4,
    );

Map<String, dynamic> _$$VitalsImplToJson(_$VitalsImpl instance) =>
    <String, dynamic>{
      'systolic': instance.systolic,
      'diastolic': instance.diastolic,
      'pulse': instance.pulse,
      'oxygen': instance.oxygen,
      'temperature': instance.temperature,
    };
