// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordImpl _$$PasswordImplFromJson(Map<String, dynamic> json) =>
    _$PasswordImpl(
      password: json['password'] as String? ?? 'false',
      isPasswordVisible: json['isPasswordVisible'] as bool? ?? false,
      isAddDiseaseVisible: json['isAddDiseaseVisible'] as bool? ?? false,
    );

Map<String, dynamic> _$$PasswordImplToJson(_$PasswordImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'isPasswordVisible': instance.isPasswordVisible,
      'isAddDiseaseVisible': instance.isAddDiseaseVisible,
    };
