// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.grey
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_$HomeTreatmentPlanImpl _$$HomeTreatmentPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeTreatmentPlanImpl(
      homeTreatment: (json['homeTreatment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Prescription.fromJson(e)),
      ),
    );

Map<String, dynamic> _$$HomeTreatmentPlanImplToJson(
        _$HomeTreatmentPlanImpl instance) =>
    <String, dynamic>{
      'homeTreatment': instance.homeTreatment,
    };

_$MedicineImpl _$$MedicineImplFromJson(Map<String, dynamic> json) =>
    _$MedicineImpl(
      medicine: json['medicine'] as String,
    );

Map<String, dynamic> _$$MedicineImplToJson(_$MedicineImpl instance) =>
    <String, dynamic>{
      'medicine': instance.medicine,
    };

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
      id: json['id'] as String,
      staffType: $enumDecode(_$StaffTypeEnumMap, json['staffType']),
      name: json['name'] as String,
      payScale: json['payScale'] as int,
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'staffType': _$StaffTypeEnumMap[instance.staffType]!,
      'name': instance.name,
      'payScale': instance.payScale,
    };

const _$StaffTypeEnumMap = {
  StaffType.MD: 'MD',
  StaffType.TECHNICIAN: 'TECHNICIAN',
  StaffType.LHV: 'LHV',
  StaffType.PHYSICIAN: 'PHYSICIAN',
  StaffType.RADIOLOGIST: 'RADIOLOGIST',
  StaffType.DENTIST: 'DENTIST',
};

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      cnic: CNIC.fromJson(json['cnic']),
      age: Duration(microseconds: json['age'] as int),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      isAttended: json['isAttended'] as bool,
      arrivalAt: DateTime.parse(json['arrivalAt'] as String),
      address: Address.fromJson(json['address']),
      patientStatus: $enumDecode(_$PatientStatusEnumMap, json['patientStatus']),
      classification:
          $enumDecode(_$ClassificationEnumMap, json['classification']),
      triage: $enumDecode(_$TriageEnumMap, json['triage']),
      presentingComplaints: (json['presentingComplaints'] as List<dynamic>)
          .map(Complaint.fromJson)
          .toList(),
      vitals: Vitals.fromJson(json['vitals']),
      examinations: Examinations.fromJson(json['examinations']),
      investigations: (json['investigations'] as List<dynamic>)
          .map(Investigation.fromJson)
          .toList(),
      managements: (json['managements'] as List<dynamic>)
          .map(Management.fromJson)
          .toList(),
      provisionalDiagnosis: json['provisionalDiagnosis'] as String,
      diagnosis: json['diagnosis'] as String,
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cnic': instance.cnic,
      'age': instance.age.inMicroseconds,
      'gender': _$GenderEnumMap[instance.gender]!,
      'isAttended': instance.isAttended,
      'arrivalAt': instance.arrivalAt.toIso8601String(),
      'address': instance.address,
      'patientStatus': _$PatientStatusEnumMap[instance.patientStatus]!,
      'classification': _$ClassificationEnumMap[instance.classification]!,
      'triage': _$TriageEnumMap[instance.triage]!,
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

_$ExaminationsImpl _$$ExaminationsImplFromJson(Map<String, dynamic> json) =>
    _$ExaminationsImpl(
      eye: json['eye'] as String,
      ent: json['ent'] as String,
      cvs: json['cvs'] as String,
      cns: json['cns'] as String,
      pulmo: json['pulmo'] as String,
      skin: json['skin'] as String,
      gi: json['gi'] as String,
      gu: json['gu'] as String,
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
      complaint: json['complaint'] as String,
      history: json['history'] as String,
      duration: Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$ComplaintImplToJson(_$ComplaintImpl instance) =>
    <String, dynamic>{
      'complaint': instance.complaint,
      'history': instance.history,
      'duration': instance.duration.inMicroseconds,
    };

_$CNICImpl _$$CNICImplFromJson(Map<String, dynamic> json) => _$CNICImpl(
      a: json['a'] as String,
      b: json['b'] as String,
      c: json['c'] as String,
    );

Map<String, dynamic> _$$CNICImplToJson(_$CNICImpl instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      country: json['country'] as String,
      province: json['province'] as String,
      city: json['city'] as String,
      area: json['area'] as String,
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
      name: json['name'] as String,
      value: json['value'] as String,
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
      description: json['description'] as String,
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
      systolic: json['systolic'] as int,
      diastolic: json['diastolic'] as int,
      pulse: json['pulse'] as int,
      oxygen: json['oxygen'] as int,
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$VitalsImplToJson(_$VitalsImpl instance) =>
    <String, dynamic>{
      'systolic': instance.systolic,
      'diastolic': instance.diastolic,
      'pulse': instance.pulse,
      'oxygen': instance.oxygen,
      'temperature': instance.temperature,
    };

_$PrescriptionImpl _$$PrescriptionImplFromJson(Map<String, dynamic> json) =>
    _$PrescriptionImpl(
      name: json['name'] as String,
      medicine: Medicine.fromJson(json['medicine']),
      dose: json['dose'] as String,
      instructions: json['instructions'] as String,
    );

Map<String, dynamic> _$$PrescriptionImplToJson(_$PrescriptionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'medicine': instance.medicine,
      'dose': instance.dose,
      'instructions': instance.instructions,
    };
