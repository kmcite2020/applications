// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$DepartmentsImpl _$$DepartmentsImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, Department.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Department>{},
    );

Map<String, dynamic> _$$DepartmentsImplToJson(_$DepartmentsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
