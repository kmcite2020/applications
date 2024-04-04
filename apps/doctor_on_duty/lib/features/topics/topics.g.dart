// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicsImpl _$$TopicsImplFromJson(Map<String, dynamic> json) => _$TopicsImpl(
      topics: (json['topics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Topic.fromJson(e)),
      ),
    );

Map<String, dynamic> _$$TopicsImplToJson(_$TopicsImpl instance) =>
    <String, dynamic>{
      'topics': instance.topics,
    };

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: json['id'] as String,
      chapter: $enumDecode(_$ChapterEnumMap, json['chapter']),
      diagnosis: Diagnosis.fromJson(json['diagnosis']),
      riskFactors: (json['riskFactors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      causes:
          (json['causes'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      descriptions: (json['descriptions'] as List<dynamic>)
          .map(Content.fromJson)
          .toList(),
      signs: Signs.fromJson(json['signs']),
      definition: json['definition'] as String,
      epidemiology: json['epidemiology'] as String,
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      complications: (json['complications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      investigations: (json['investigations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      emergencyManagement: (json['emergencyManagement'] as List<dynamic>)
          .map(Management.fromJson)
          .toList(),
      homeManagement: (json['homeManagement'] as List<dynamic>)
          .map(Management.fromJson)
          .toList(),
      editing: json['editing'] as bool,
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chapter': _$ChapterEnumMap[instance.chapter]!,
      'diagnosis': instance.diagnosis,
      'riskFactors': instance.riskFactors,
      'causes': instance.causes,
      'name': instance.name,
      'descriptions': instance.descriptions,
      'signs': instance.signs,
      'definition': instance.definition,
      'epidemiology': instance.epidemiology,
      'symptoms': instance.symptoms,
      'complications': instance.complications,
      'investigations': instance.investigations,
      'emergencyManagement': instance.emergencyManagement,
      'homeManagement': instance.homeManagement,
      'editing': instance.editing,
    };

const _$ChapterEnumMap = {
  Chapter.emergency: 'emergency',
  Chapter.poisoning: 'poisoning',
  Chapter.gyneObs: 'gyneObs',
  Chapter.peds: 'peds',
  Chapter.eye: 'eye',
  Chapter.ent: 'ent',
  Chapter.surgery: 'surgery',
  Chapter.neurosurgery: 'neurosurgery',
  Chapter.ortho: 'ortho',
  Chapter.dentistry: 'dentistry',
};

_$SignsImpl _$$SignsImplFromJson(Map<String, dynamic> json) => _$SignsImpl(
      eye: json['eye'] as String,
      ent: json['ent'] as String,
      cns: json['cns'] as String,
      cvs: json['cvs'] as String,
      pulmo: json['pulmo'] as String,
      gu: json['gu'] as String,
      gi: json['gi'] as String,
      vitalsSigns: VitalsSigns.fromJson(json['vitalsSigns']),
    );

Map<String, dynamic> _$$SignsImplToJson(_$SignsImpl instance) =>
    <String, dynamic>{
      'eye': instance.eye,
      'ent': instance.ent,
      'cns': instance.cns,
      'cvs': instance.cvs,
      'pulmo': instance.pulmo,
      'gu': instance.gu,
      'gi': instance.gi,
      'vitalsSigns': instance.vitalsSigns,
    };

_$VitalsSignsImpl _$$VitalsSignsImplFromJson(Map<String, dynamic> json) =>
    _$VitalsSignsImpl(
      temperature: Temperature.fromJson(json['temperature']),
      bloodPressure: BloodPressure.fromJson(json['bloodPressure']),
      respiratoryRate: json['respiratoryRate'] as int,
      saturation: json['saturation'] as int,
    );

Map<String, dynamic> _$$VitalsSignsImplToJson(_$VitalsSignsImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'bloodPressure': instance.bloodPressure,
      'respiratoryRate': instance.respiratoryRate,
      'saturation': instance.saturation,
    };

_$BloodPressureImpl _$$BloodPressureImplFromJson(Map<String, dynamic> json) =>
    _$BloodPressureImpl(
      systolic: json['systolic'] as int,
      diastolic: json['diastolic'] as int,
    );

Map<String, dynamic> _$$BloodPressureImplToJson(_$BloodPressureImpl instance) =>
    <String, dynamic>{
      'systolic': instance.systolic,
      'diastolic': instance.diastolic,
    };

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
    };

_$ManagementImpl _$$ManagementImplFromJson(Map<String, dynamic> json) =>
    _$ManagementImpl(
      medicine: json['medicine'] as String,
      dose: json['dose'] as String,
      instructions: json['instructions'] as String,
    );

Map<String, dynamic> _$$ManagementImplToJson(_$ManagementImpl instance) =>
    <String, dynamic>{
      'medicine': instance.medicine,
      'dose': instance.dose,
      'instructions': instance.instructions,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      title: json['title'] as String,
      text: json['text'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'path': instance.path,
    };

_$DiagnosisImpl _$$DiagnosisImplFromJson(Map<String, dynamic> json) =>
    _$DiagnosisImpl(
      definiteDiagnosis: json['definiteDiagnosis'] as String,
      provisionalDiagnosis: (json['provisionalDiagnosis'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DiagnosisImplToJson(_$DiagnosisImpl instance) =>
    <String, dynamic>{
      'definiteDiagnosis': instance.definiteDiagnosis,
      'provisionalDiagnosis': instance.provisionalDiagnosis,
    };
