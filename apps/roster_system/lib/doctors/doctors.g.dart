// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      gender:
          $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      qualifications: json['qualifications'] as String? ?? '',
      contactDetails: json['contactDetails'] as String? ?? '',
      profilePicture: json['profilePicture'] as String? ?? '',
      departments: json['departments'] as String? ?? '',
      editing: json['editing'] as bool? ?? true,
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'qualifications': instance.qualifications,
      'contactDetails': instance.contactDetails,
      'profilePicture': instance.profilePicture,
      'departments': instance.departments,
      'editing': instance.editing,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
