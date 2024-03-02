// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      settings: json['settings'] == null
          ? const Settings()
          : Settings.fromJson(json['settings']),
      doctors: (json['doctors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Doctor.fromJson(e)),
          ) ??
          const <String, Doctor>{},
      departments: (json['departments'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, Department.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Department>{},
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'settings': instance.settings,
      'doctors': instance.doctors,
      'departments': instance.departments,
    };
