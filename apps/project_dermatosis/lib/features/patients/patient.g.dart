// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      gender:
          $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
      editing: json['editing'] as bool? ?? false,
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      lesions: (json['lesions'] as List<dynamic>?)
              ?.map((e) => Lesion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      contact: json['contact'] == null
          ? const Contact()
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      diagnoses: json['diagnoses'] == null
          ? const Diagnoses()
          : Diagnoses.fromJson(json['diagnoses'] as Map<String, dynamic>),
      pictures: (json['pictures'] as List<dynamic>?)
              ?.map((e) => Imagery.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'editing': instance.editing,
      'address': instance.address,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'lesions': instance.lesions,
      'contact': instance.contact,
      'diagnoses': instance.diagnoses,
      'pictures': instance.pictures,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

_$DiagnosesImpl _$$DiagnosesImplFromJson(Map<String, dynamic> json) =>
    _$DiagnosesImpl(
      diagnosis: json['diagnosis'] as String? ?? '',
      provisionalDiagnoses: (json['provisionalDiagnoses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DiagnosesImplToJson(_$DiagnosesImpl instance) =>
    <String, dynamic>{
      'diagnosis': instance.diagnosis,
      'provisionalDiagnoses': instance.provisionalDiagnoses,
    };

_$LesionImpl _$$LesionImplFromJson(Map<String, dynamic> json) => _$LesionImpl(
      site: $enumDecodeNullable(_$SiteEnumMap, json['site']) ?? Site.arms,
      patterns: json['patterns'] == null
          ? const Patterns()
          : Patterns.fromJson(json['patterns'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LesionImplToJson(_$LesionImpl instance) =>
    <String, dynamic>{
      'site': _$SiteEnumMap[instance.site]!,
      'patterns': instance.patterns,
    };

const _$SiteEnumMap = {
  Site.scalp: 'scalp',
  Site.face: 'face',
  Site.trunk: 'trunk',
  Site.thigh: 'thigh',
  Site.legs: 'legs',
  Site.arms: 'arms',
  Site.hands: 'hands',
  Site.feet: 'feet',
};

_$PatternsImpl _$$PatternsImplFromJson(Map<String, dynamic> json) =>
    _$PatternsImpl(
      localizedOrGeneralized: json['localizedOrGeneralized'] as bool? ?? false,
      unilateralOrBilateral: json['unilateralOrBilateral'] as bool? ?? false,
      symmetricalOrAssymetrical:
          json['symmetricalOrAssymetrical'] as bool? ?? false,
      truncalOrAcral: json['truncalOrAcral'] as bool? ?? false,
      flexorOrExtensor: json['flexorOrExtensor'] as bool? ?? false,
      exposedOrCovered: json['exposedOrCovered'] as bool? ?? false,
    );

Map<String, dynamic> _$$PatternsImplToJson(_$PatternsImpl instance) =>
    <String, dynamic>{
      'localizedOrGeneralized': instance.localizedOrGeneralized,
      'unilateralOrBilateral': instance.unilateralOrBilateral,
      'symmetricalOrAssymetrical': instance.symmetricalOrAssymetrical,
      'truncalOrAcral': instance.truncalOrAcral,
      'flexorOrExtensor': instance.flexorOrExtensor,
      'exposedOrCovered': instance.exposedOrCovered,
    };

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      countryCode: json['countryCode'] as String? ?? '',
      mnp: json['mnp'] as String? ?? '',
      phoneCode: json['phoneCode'] as String? ?? '',
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'mnp': instance.mnp,
      'phoneCode': instance.phoneCode,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      town: json['town'] as String? ?? '',
      city: json['city'] as String? ?? '',
      province: json['province'] as String? ?? '',
      country: json['country'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'town': instance.town,
      'city': instance.city,
      'province': instance.province,
      'country': instance.country,
    };
