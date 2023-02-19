// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      dateOfPuberty: json['dateOfPuberty'] == null
          ? null
          : DateTime.parse(json['dateOfPuberty'] as String),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'dateOfPuberty': instance.dateOfPuberty?.toIso8601String(),
    };
